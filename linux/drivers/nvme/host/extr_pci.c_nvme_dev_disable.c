
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {scalar_t__ error_state; } ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ queue_count; scalar_t__ admin_q; } ;
struct nvme_dev {int shutdown_lock; TYPE_1__ ctrl; int admin_tagset; int tagset; int * queues; scalar_t__ bar; int dev; } ;


 int NVME_CSTS_CFS ;
 int NVME_CSTS_RDY ;
 scalar_t__ NVME_CTRL_LIVE ;
 scalar_t__ NVME_CTRL_RESETTING ;
 int NVME_IO_TIMEOUT ;
 scalar_t__ NVME_REG_CSTS ;
 int blk_mq_tagset_busy_iter (int *,int ,TYPE_1__*) ;
 int blk_mq_tagset_wait_completed_request (int *) ;
 int blk_mq_unquiesce_queue (scalar_t__) ;
 int blk_queue_dying (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_cancel_request ;
 int nvme_disable_admin_queue (struct nvme_dev*,int) ;
 int nvme_disable_io_queues (struct nvme_dev*) ;
 int nvme_pci_disable (struct nvme_dev*) ;
 int nvme_start_freeze (TYPE_1__*) ;
 int nvme_start_queues (TYPE_1__*) ;
 int nvme_stop_queues (TYPE_1__*) ;
 int nvme_suspend_io_queues (struct nvme_dev*) ;
 int nvme_suspend_queue (int *) ;
 int nvme_wait_freeze_timeout (TYPE_1__*,int ) ;
 scalar_t__ pci_channel_io_normal ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;
 int readl (scalar_t__) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
{
 bool dead = 1, freeze = 0;
 struct pci_dev *pdev = to_pci_dev(dev->dev);

 mutex_lock(&dev->shutdown_lock);
 if (pci_is_enabled(pdev)) {
  u32 csts = readl(dev->bar + NVME_REG_CSTS);

  if (dev->ctrl.state == NVME_CTRL_LIVE ||
      dev->ctrl.state == NVME_CTRL_RESETTING) {
   freeze = 1;
   nvme_start_freeze(&dev->ctrl);
  }
  dead = !!((csts & NVME_CSTS_CFS) || !(csts & NVME_CSTS_RDY) ||
   pdev->error_state != pci_channel_io_normal);
 }





 if (!dead && shutdown && freeze)
  nvme_wait_freeze_timeout(&dev->ctrl, NVME_IO_TIMEOUT);

 nvme_stop_queues(&dev->ctrl);

 if (!dead && dev->ctrl.queue_count > 0) {
  nvme_disable_io_queues(dev);
  nvme_disable_admin_queue(dev, shutdown);
 }
 nvme_suspend_io_queues(dev);
 nvme_suspend_queue(&dev->queues[0]);
 nvme_pci_disable(dev);

 blk_mq_tagset_busy_iter(&dev->tagset, nvme_cancel_request, &dev->ctrl);
 blk_mq_tagset_busy_iter(&dev->admin_tagset, nvme_cancel_request, &dev->ctrl);
 blk_mq_tagset_wait_completed_request(&dev->tagset);
 blk_mq_tagset_wait_completed_request(&dev->admin_tagset);






 if (shutdown) {
  nvme_start_queues(&dev->ctrl);
  if (dev->ctrl.admin_q && !blk_queue_dying(dev->ctrl.admin_q))
   blk_mq_unquiesce_queue(dev->ctrl.admin_q);
 }
 mutex_unlock(&dev->shutdown_lock);
}
