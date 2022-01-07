
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct request {int dummy; } ;
struct nvme_tcp_request {struct nvme_tcp_queue* queue; int pdu; } ;
struct nvme_tcp_queue {int pf_cache; } ;
struct blk_mq_tag_set {struct nvme_tcp_ctrl* driver_data; } ;
struct nvme_tcp_ctrl {int ctrl; struct nvme_tcp_queue* queues; struct blk_mq_tag_set tag_set; } ;
struct nvme_tcp_cmd_pdu {int dummy; } ;
struct TYPE_2__ {int * ctrl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 struct nvme_tcp_request* blk_mq_rq_to_pdu (struct request*) ;
 TYPE_1__* nvme_req (struct request*) ;
 scalar_t__ nvme_tcp_hdgst_len (struct nvme_tcp_queue*) ;
 int page_frag_alloc (int *,scalar_t__,int) ;

__attribute__((used)) static int nvme_tcp_init_request(struct blk_mq_tag_set *set,
  struct request *rq, unsigned int hctx_idx,
  unsigned int numa_node)
{
 struct nvme_tcp_ctrl *ctrl = set->driver_data;
 struct nvme_tcp_request *req = blk_mq_rq_to_pdu(rq);
 int queue_idx = (set == &ctrl->tag_set) ? hctx_idx + 1 : 0;
 struct nvme_tcp_queue *queue = &ctrl->queues[queue_idx];
 u8 hdgst = nvme_tcp_hdgst_len(queue);

 req->pdu = page_frag_alloc(&queue->pf_cache,
  sizeof(struct nvme_tcp_cmd_pdu) + hdgst,
  GFP_KERNEL | __GFP_ZERO);
 if (!req->pdu)
  return -ENOMEM;

 req->queue = queue;
 nvme_req(rq)->ctrl = &ctrl->ctrl;

 return 0;
}
