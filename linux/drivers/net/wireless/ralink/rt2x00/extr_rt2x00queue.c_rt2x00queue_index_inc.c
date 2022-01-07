
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {int last_action; struct data_queue* queue; } ;
struct data_queue {scalar_t__* index; scalar_t__ limit; int index_lock; int count; int length; int rt2x00dev; } ;
typedef enum queue_index { ____Placeholder_queue_index } queue_index ;


 int Q_INDEX ;
 int Q_INDEX_DONE ;
 int Q_INDEX_MAX ;
 int jiffies ;
 int rt2x00_err (int ,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void rt2x00queue_index_inc(struct queue_entry *entry, enum queue_index index)
{
 struct data_queue *queue = entry->queue;
 unsigned long irqflags;

 if (unlikely(index >= Q_INDEX_MAX)) {
  rt2x00_err(queue->rt2x00dev,
      "Index change on invalid index type (%d)\n", index);
  return;
 }

 spin_lock_irqsave(&queue->index_lock, irqflags);

 queue->index[index]++;
 if (queue->index[index] >= queue->limit)
  queue->index[index] = 0;

 entry->last_action = jiffies;

 if (index == Q_INDEX) {
  queue->length++;
 } else if (index == Q_INDEX_DONE) {
  queue->length--;
  queue->count++;
 }

 spin_unlock_irqrestore(&queue->index_lock, irqflags);
}
