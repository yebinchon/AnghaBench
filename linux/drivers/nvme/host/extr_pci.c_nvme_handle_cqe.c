
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct request {int dummy; } ;
struct nvme_queue {scalar_t__ q_depth; scalar_t__ qid; int sq_tail; int * tags; TYPE_1__* dev; struct nvme_completion* cqes; } ;
struct nvme_completion {scalar_t__ command_id; int result; int status; int sq_head; int sq_id; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {TYPE_2__ ctrl; } ;


 scalar_t__ NVME_AQ_BLK_MQ_DEPTH ;
 struct request* blk_mq_tag_to_rq (int ,scalar_t__) ;
 int dev_warn (int ,char*,scalar_t__,int ) ;
 int le16_to_cpu (int ) ;
 int nvme_complete_async_event (TYPE_2__*,int ,int *) ;
 int nvme_end_request (struct request*,int ,int ) ;
 int trace_nvme_sq (struct request*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
{
 volatile struct nvme_completion *cqe = &nvmeq->cqes[idx];
 struct request *req;

 if (unlikely(cqe->command_id >= nvmeq->q_depth)) {
  dev_warn(nvmeq->dev->ctrl.device,
   "invalid id %d completed on queue %d\n",
   cqe->command_id, le16_to_cpu(cqe->sq_id));
  return;
 }







 if (unlikely(nvmeq->qid == 0 &&
   cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH)) {
  nvme_complete_async_event(&nvmeq->dev->ctrl,
    cqe->status, &cqe->result);
  return;
 }

 req = blk_mq_tag_to_rq(*nvmeq->tags, cqe->command_id);
 trace_nvme_sq(req, cqe->sq_head, nvmeq->sq_tail);
 nvme_end_request(req, cqe->status, cqe->result);
}
