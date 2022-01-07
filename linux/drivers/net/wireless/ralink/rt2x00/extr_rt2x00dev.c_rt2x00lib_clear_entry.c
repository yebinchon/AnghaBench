
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rt2x00_dev {TYPE_2__* ops; } ;
struct queue_entry {TYPE_3__* queue; scalar_t__ flags; int * skb; } ;
struct TYPE_7__ {int tx_lock; } ;
struct TYPE_6__ {TYPE_1__* lib; } ;
struct TYPE_5__ {int (* clear_entry ) (struct queue_entry*) ;} ;


 int Q_INDEX_DONE ;
 int rt2x00queue_index_inc (struct queue_entry*,int ) ;
 int rt2x00queue_threshold (TYPE_3__*) ;
 int rt2x00queue_unpause_queue (TYPE_3__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct queue_entry*) ;

__attribute__((used)) static void rt2x00lib_clear_entry(struct rt2x00_dev *rt2x00dev,
      struct queue_entry *entry)
{



 entry->skb = ((void*)0);
 entry->flags = 0;

 rt2x00dev->ops->lib->clear_entry(entry);

 rt2x00queue_index_inc(entry, Q_INDEX_DONE);
 spin_lock_bh(&entry->queue->tx_lock);
 if (!rt2x00queue_threshold(entry->queue))
  rt2x00queue_unpause_queue(entry->queue);
 spin_unlock_bh(&entry->queue->tx_lock);
}
