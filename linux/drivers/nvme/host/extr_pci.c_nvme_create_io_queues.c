
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int queue_count; } ;
struct nvme_dev {unsigned int max_qid; unsigned int* io_queues; unsigned int online_queues; int * queues; TYPE_1__ ctrl; int q_depth; } ;


 int ENOMEM ;
 size_t HCTX_TYPE_DEFAULT ;
 size_t HCTX_TYPE_POLL ;
 size_t HCTX_TYPE_READ ;
 unsigned int min (unsigned int,int) ;
 scalar_t__ nvme_alloc_queue (struct nvme_dev*,unsigned int,int ) ;
 int nvme_create_queue (int *,unsigned int,int) ;

__attribute__((used)) static int nvme_create_io_queues(struct nvme_dev *dev)
{
 unsigned i, max, rw_queues;
 int ret = 0;

 for (i = dev->ctrl.queue_count; i <= dev->max_qid; i++) {
  if (nvme_alloc_queue(dev, i, dev->q_depth)) {
   ret = -ENOMEM;
   break;
  }
 }

 max = min(dev->max_qid, dev->ctrl.queue_count - 1);
 if (max != 1 && dev->io_queues[HCTX_TYPE_POLL]) {
  rw_queues = dev->io_queues[HCTX_TYPE_DEFAULT] +
    dev->io_queues[HCTX_TYPE_READ];
 } else {
  rw_queues = max;
 }

 for (i = dev->online_queues; i <= max; i++) {
  bool polled = i > rw_queues;

  ret = nvme_create_queue(&dev->queues[i], i, polled);
  if (ret)
   break;
 }







 return ret >= 0 ? 0 : ret;
}
