
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {int tags; } ;
struct TYPE_2__ {scalar_t__* tags; } ;
struct nvme_dev {TYPE_1__ admin_tagset; struct nvme_queue* queues; } ;
struct blk_mq_hw_ctx {scalar_t__ tags; struct nvme_queue* driver_data; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int nvme_admin_init_hctx(struct blk_mq_hw_ctx *hctx, void *data,
    unsigned int hctx_idx)
{
 struct nvme_dev *dev = data;
 struct nvme_queue *nvmeq = &dev->queues[0];

 WARN_ON(hctx_idx != 0);
 WARN_ON(dev->admin_tagset.tags[0] != hctx->tags);
 WARN_ON(nvmeq->tags);

 hctx->driver_data = nvmeq;
 nvmeq->tags = &dev->admin_tagset.tags[0];
 return 0;
}
