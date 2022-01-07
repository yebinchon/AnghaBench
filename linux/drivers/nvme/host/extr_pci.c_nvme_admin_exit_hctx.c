
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int * tags; } ;
struct blk_mq_hw_ctx {struct nvme_queue* driver_data; } ;



__attribute__((used)) static void nvme_admin_exit_hctx(struct blk_mq_hw_ctx *hctx, unsigned int hctx_idx)
{
 struct nvme_queue *nvmeq = hctx->driver_data;

 nvmeq->tags = ((void*)0);
}
