# Render-compatible Dockerfile for PHP built-in server
FROM php:8.2-cli

# Set working directory
WORKDIR /var/www/html

# Copy project files
COPY index.php .
COPY style.css .
COPY screenshots/ ./screenshots/

# Expose Render's port (Render sets $PORT)
EXPOSE 10000

# Start PHP built-in server on Render's PORT
CMD php -S 0.0.0.0:${PORT:-10000} -t /var/www/html
