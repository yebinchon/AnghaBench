
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_queue {struct blk_mq_hw_ctx* hctx; } ;
struct nvme_fc_ctrl {struct nvme_fc_queue* queues; } ;
struct blk_mq_hw_ctx {struct nvme_fc_queue* driver_data; } ;



__attribute__((used)) static inline void
__nvme_fc_init_hctx(struct blk_mq_hw_ctx *hctx, struct nvme_fc_ctrl *ctrl,
  unsigned int qidx)
{
 struct nvme_fc_queue *queue = &ctrl->queues[qidx];

 hctx->driver_data = queue;
 queue->hctx = hctx;
}
