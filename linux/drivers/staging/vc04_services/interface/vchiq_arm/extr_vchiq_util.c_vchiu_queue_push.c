
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiu_queue {int write; int read; int size; int push; struct vchiq_header** storage; int pop; int initialized; } ;
struct vchiq_header {int dummy; } ;


 int complete (int *) ;
 int current ;
 int flush_signals (int ) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

void vchiu_queue_push(struct vchiu_queue *queue, struct vchiq_header *header)
{
 if (!queue->initialized)
  return;

 while (queue->write == queue->read + queue->size) {
  if (wait_for_completion_interruptible(&queue->pop))
   flush_signals(current);
 }

 queue->storage[queue->write & (queue->size - 1)] = header;
 queue->write++;

 complete(&queue->push);
}
