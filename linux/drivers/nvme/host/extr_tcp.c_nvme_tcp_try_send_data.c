
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nvme_tcp_request {scalar_t__ offset; int state; int ddgst; struct nvme_tcp_queue* queue; } ;
struct nvme_tcp_queue {int snd_hash; scalar_t__ data_digest; int sock; } ;


 int EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int MSG_MORE ;
 int NVME_TCP_SEND_DDGST ;
 int PageSlab (struct page*) ;
 int kernel_sendpage (int ,struct page*,size_t,size_t,int) ;
 int nvme_tcp_advance_req (struct nvme_tcp_request*,int) ;
 int nvme_tcp_ddgst_final (int ,int *) ;
 int nvme_tcp_ddgst_update (int ,struct page*,size_t,int) ;
 int nvme_tcp_done_send_req (struct nvme_tcp_queue*) ;
 int nvme_tcp_pdu_last_send (struct nvme_tcp_request*,size_t) ;
 size_t nvme_tcp_req_cur_length (struct nvme_tcp_request*) ;
 size_t nvme_tcp_req_cur_offset (struct nvme_tcp_request*) ;
 struct page* nvme_tcp_req_cur_page (struct nvme_tcp_request*) ;
 int sock_no_sendpage (int ,struct page*,size_t,size_t,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
{
 struct nvme_tcp_queue *queue = req->queue;

 while (1) {
  struct page *page = nvme_tcp_req_cur_page(req);
  size_t offset = nvme_tcp_req_cur_offset(req);
  size_t len = nvme_tcp_req_cur_length(req);
  bool last = nvme_tcp_pdu_last_send(req, len);
  int ret, flags = MSG_DONTWAIT;

  if (last && !queue->data_digest)
   flags |= MSG_EOR;
  else
   flags |= MSG_MORE;


  if (unlikely(PageSlab(page))) {
   ret = sock_no_sendpage(queue->sock, page, offset, len,
     flags);
  } else {
   ret = kernel_sendpage(queue->sock, page, offset, len,
     flags);
  }
  if (ret <= 0)
   return ret;

  nvme_tcp_advance_req(req, ret);
  if (queue->data_digest)
   nvme_tcp_ddgst_update(queue->snd_hash, page,
     offset, ret);


  if (last && ret == len) {
   if (queue->data_digest) {
    nvme_tcp_ddgst_final(queue->snd_hash,
     &req->ddgst);
    req->state = NVME_TCP_SEND_DDGST;
    req->offset = 0;
   } else {
    nvme_tcp_done_send_req(queue);
   }
   return 1;
  }
 }
 return -EAGAIN;
}
