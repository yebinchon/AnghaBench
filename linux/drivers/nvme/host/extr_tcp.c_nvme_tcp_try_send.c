
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_request {scalar_t__ state; } ;
struct nvme_tcp_queue {struct nvme_tcp_request* request; } ;


 int EAGAIN ;
 scalar_t__ NVME_TCP_SEND_CMD_PDU ;
 scalar_t__ NVME_TCP_SEND_DATA ;
 scalar_t__ NVME_TCP_SEND_DDGST ;
 scalar_t__ NVME_TCP_SEND_H2C_PDU ;
 struct nvme_tcp_request* nvme_tcp_fetch_request (struct nvme_tcp_queue*) ;
 int nvme_tcp_has_inline_data (struct nvme_tcp_request*) ;
 int nvme_tcp_try_send_cmd_pdu (struct nvme_tcp_request*) ;
 int nvme_tcp_try_send_data (struct nvme_tcp_request*) ;
 int nvme_tcp_try_send_data_pdu (struct nvme_tcp_request*) ;
 int nvme_tcp_try_send_ddgst (struct nvme_tcp_request*) ;

__attribute__((used)) static int nvme_tcp_try_send(struct nvme_tcp_queue *queue)
{
 struct nvme_tcp_request *req;
 int ret = 1;

 if (!queue->request) {
  queue->request = nvme_tcp_fetch_request(queue);
  if (!queue->request)
   return 0;
 }
 req = queue->request;

 if (req->state == NVME_TCP_SEND_CMD_PDU) {
  ret = nvme_tcp_try_send_cmd_pdu(req);
  if (ret <= 0)
   goto done;
  if (!nvme_tcp_has_inline_data(req))
   return ret;
 }

 if (req->state == NVME_TCP_SEND_H2C_PDU) {
  ret = nvme_tcp_try_send_data_pdu(req);
  if (ret <= 0)
   goto done;
 }

 if (req->state == NVME_TCP_SEND_DATA) {
  ret = nvme_tcp_try_send_data(req);
  if (ret <= 0)
   goto done;
 }

 if (req->state == NVME_TCP_SEND_DDGST)
  ret = nvme_tcp_try_send_ddgst(req);
done:
 if (ret == -EAGAIN)
  ret = 0;
 return ret;
}
