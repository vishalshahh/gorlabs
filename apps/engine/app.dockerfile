FROM node:buster-slim

ARG NEXT_PUBLIC_WS_URL
ARG NEXT_PUBLIC_API_URL
ENV NEXT_PUBLIC_WS_URL=${NEXT_PUBLIC_WS_URL}
ENV NEXT_PUBLIC_API_URL=${NEXT_PUBLIC_API_URL}

WORKDIR /home/engine

COPY ../frontend /home/engine/ui/

RUN npm install
RUN npm run build

CMD ["npm","start"]