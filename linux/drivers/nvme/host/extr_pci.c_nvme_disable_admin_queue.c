
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int dummy; } ;
struct nvme_dev {int ctrl; struct nvme_queue* queues; } ;


 int nvme_disable_ctrl (int *) ;
 int nvme_poll_irqdisable (struct nvme_queue*,int) ;
 int nvme_shutdown_ctrl (int *) ;

__attribute__((used)) static void nvme_disable_admin_queue(struct nvme_dev *dev, bool shutdown)
{
 struct nvme_queue *nvmeq = &dev->queues[0];

 if (shutdown)
  nvme_shutdown_ctrl(&dev->ctrl);
 else
  nvme_disable_ctrl(&dev->ctrl);

 nvme_poll_irqdisable(nvmeq, -1);
}
