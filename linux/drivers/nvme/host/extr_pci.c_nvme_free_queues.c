
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue_count; } ;
struct nvme_dev {int * queues; TYPE_1__ ctrl; } ;


 int nvme_free_queue (int *) ;

__attribute__((used)) static void nvme_free_queues(struct nvme_dev *dev, int lowest)
{
 int i;

 for (i = dev->ctrl.queue_count - 1; i >= lowest; i--) {
  dev->ctrl.queue_count--;
  nvme_free_queue(&dev->queues[i]);
 }
}
