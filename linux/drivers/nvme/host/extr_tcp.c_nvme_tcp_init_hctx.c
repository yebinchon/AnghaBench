
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_queue {int dummy; } ;
struct nvme_tcp_ctrl {struct nvme_tcp_queue* queues; } ;
struct blk_mq_hw_ctx {struct nvme_tcp_queue* driver_data; } ;



__attribute__((used)) static int nvme_tcp_init_hctx(struct blk_mq_hw_ctx *hctx, void *data,
  unsigned int hctx_idx)
{
 struct nvme_tcp_ctrl *ctrl = data;
 struct nvme_tcp_queue *queue = &ctrl->queues[hctx_idx + 1];

 hctx->driver_data = queue;
 return 0;
}
