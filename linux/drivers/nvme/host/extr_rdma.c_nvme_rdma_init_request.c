
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_3__ {int data; } ;
struct nvme_rdma_request {struct nvme_rdma_queue* queue; TYPE_1__ sqe; } ;
struct nvme_rdma_queue {int dummy; } ;
struct blk_mq_tag_set {struct nvme_rdma_ctrl* driver_data; } ;
struct nvme_rdma_ctrl {int ctrl; struct nvme_rdma_queue* queues; struct blk_mq_tag_set tag_set; } ;
struct nvme_command {int dummy; } ;
struct TYPE_4__ {int * ctrl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvme_rdma_request* blk_mq_rq_to_pdu (struct request*) ;
 int kzalloc (int,int ) ;
 TYPE_2__* nvme_req (struct request*) ;

__attribute__((used)) static int nvme_rdma_init_request(struct blk_mq_tag_set *set,
  struct request *rq, unsigned int hctx_idx,
  unsigned int numa_node)
{
 struct nvme_rdma_ctrl *ctrl = set->driver_data;
 struct nvme_rdma_request *req = blk_mq_rq_to_pdu(rq);
 int queue_idx = (set == &ctrl->tag_set) ? hctx_idx + 1 : 0;
 struct nvme_rdma_queue *queue = &ctrl->queues[queue_idx];

 nvme_req(rq)->ctrl = &ctrl->ctrl;
 req->sqe.data = kzalloc(sizeof(struct nvme_command), GFP_KERNEL);
 if (!req->sqe.data)
  return -ENOMEM;

 req->queue = queue;

 return 0;
}
