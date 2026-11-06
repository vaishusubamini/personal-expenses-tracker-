 Use Node.js
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy remaining files
COPY . .

# Create data directory
RUN mkdir -p data

# Expose application port
EXPOSE 3010

# Start application
CMD ["npm", "start"]

