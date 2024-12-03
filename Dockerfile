FROM public.ecr.aws/docker/library/node:buster-slim
RUN apt update && apt install -y curl
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD ["node", "server.js"]