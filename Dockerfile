FROM node:12-slim

WORKDIR /app

COPY *.json ./

RUN npm install

COPY . .

ENV PORT=3001
USER node
EXPOSE 3001

CMD ["node", "app.js"]
