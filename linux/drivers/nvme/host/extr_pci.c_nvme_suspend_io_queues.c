
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue_count; } ;
struct nvme_dev {int * queues; TYPE_1__ ctrl; } ;


 int nvme_suspend_queue (int *) ;

__attribute__((used)) static void nvme_suspend_io_queues(struct nvme_dev *dev)
{
 int i;

 for (i = dev->ctrl.queue_count - 1; i > 0; i--)
  nvme_suspend_queue(&dev->queues[i]);
}
