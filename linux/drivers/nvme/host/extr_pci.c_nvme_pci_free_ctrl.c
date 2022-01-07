
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opal_dev; scalar_t__ admin_q; } ;
struct nvme_dev {int iod_mempool; TYPE_1__ ctrl; struct nvme_dev* queues; int dev; } ;
struct nvme_ctrl {int dummy; } ;


 int blk_put_queue (scalar_t__) ;
 int free_opal_dev (int ) ;
 int kfree (struct nvme_dev*) ;
 int mempool_destroy (int ) ;
 int nvme_dbbuf_dma_free (struct nvme_dev*) ;
 int nvme_free_tagset (struct nvme_dev*) ;
 int put_device (int ) ;
 struct nvme_dev* to_nvme_dev (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_pci_free_ctrl(struct nvme_ctrl *ctrl)
{
 struct nvme_dev *dev = to_nvme_dev(ctrl);

 nvme_dbbuf_dma_free(dev);
 put_device(dev->dev);
 nvme_free_tagset(dev);
 if (dev->ctrl.admin_q)
  blk_put_queue(dev->ctrl.admin_q);
 kfree(dev->queues);
 free_opal_dev(dev->ctrl.opal_dev);
 mempool_destroy(dev->iod_mempool);
 kfree(dev);
}
