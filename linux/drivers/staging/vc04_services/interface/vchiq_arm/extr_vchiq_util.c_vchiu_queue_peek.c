
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiu_queue {int write; int read; int size; struct vchiq_header** storage; int push; } ;
struct vchiq_header {int dummy; } ;


 int complete (int *) ;
 int current ;
 int flush_signals (int ) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

struct vchiq_header *vchiu_queue_peek(struct vchiu_queue *queue)
{
 while (queue->write == queue->read) {
  if (wait_for_completion_interruptible(&queue->push))
   flush_signals(current);
 }

 complete(&queue->push);

 return queue->storage[queue->read & (queue->size - 1)];
}
