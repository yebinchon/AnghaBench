
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_loop_queue {int dummy; } ;
struct nvme_loop_ctrl {struct nvme_loop_queue* queues; } ;
struct blk_mq_hw_ctx {struct nvme_loop_queue* driver_data; } ;


 int BUG_ON (int) ;

__attribute__((used)) static int nvme_loop_init_admin_hctx(struct blk_mq_hw_ctx *hctx, void *data,
  unsigned int hctx_idx)
{
 struct nvme_loop_ctrl *ctrl = data;
 struct nvme_loop_queue *queue = &ctrl->queues[0];

 BUG_ON(hctx_idx != 0);

 hctx->driver_data = queue;
 return 0;
}
