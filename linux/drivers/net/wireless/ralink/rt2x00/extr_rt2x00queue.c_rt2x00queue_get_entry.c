
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {int dummy; } ;
struct data_queue {size_t* index; int index_lock; struct queue_entry* entries; int rt2x00dev; } ;
typedef enum queue_index { ____Placeholder_queue_index } queue_index ;


 int Q_INDEX_MAX ;
 int rt2x00_err (int ,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

struct queue_entry *rt2x00queue_get_entry(struct data_queue *queue,
       enum queue_index index)
{
 struct queue_entry *entry;
 unsigned long irqflags;

 if (unlikely(index >= Q_INDEX_MAX)) {
  rt2x00_err(queue->rt2x00dev, "Entry requested from invalid index type (%d)\n",
      index);
  return ((void*)0);
 }

 spin_lock_irqsave(&queue->index_lock, irqflags);

 entry = &queue->entries[queue->index[index]];

 spin_unlock_irqrestore(&queue->index_lock, irqflags);

 return entry;
}
