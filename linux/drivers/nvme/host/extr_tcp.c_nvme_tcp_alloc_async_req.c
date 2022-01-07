
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nvme_tcp_request {struct nvme_tcp_queue* queue; int pdu; } ;
struct nvme_tcp_queue {int pf_cache; } ;
struct nvme_tcp_ctrl {struct nvme_tcp_queue* queues; struct nvme_tcp_request async_req; } ;
struct nvme_tcp_cmd_pdu {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 scalar_t__ nvme_tcp_hdgst_len (struct nvme_tcp_queue*) ;
 int page_frag_alloc (int *,scalar_t__,int) ;

__attribute__((used)) static int nvme_tcp_alloc_async_req(struct nvme_tcp_ctrl *ctrl)
{
 struct nvme_tcp_queue *queue = &ctrl->queues[0];
 struct nvme_tcp_request *async = &ctrl->async_req;
 u8 hdgst = nvme_tcp_hdgst_len(queue);

 async->pdu = page_frag_alloc(&queue->pf_cache,
  sizeof(struct nvme_tcp_cmd_pdu) + hdgst,
  GFP_KERNEL | __GFP_ZERO);
 if (!async->pdu)
  return -ENOMEM;

 async->queue = &ctrl->queues[0];
 return 0;
}
