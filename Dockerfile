FROM python:3.11-slim

WORKDIR /app

# Copy setup files
COPY setup.py README.md LICENSE.md ./
COPY xeuledoc/ ./xeuledoc/

# Install the package
RUN pip install --no-cache-dir .

# Set the entry point
ENTRYPOINT ["xeuledoc"]

# Default command (can be overridden)
CMD ["--help"]
