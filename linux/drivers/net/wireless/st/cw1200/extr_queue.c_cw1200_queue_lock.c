
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_queue {int lock; } ;


 int __cw1200_queue_lock (struct cw1200_queue*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cw1200_queue_lock(struct cw1200_queue *queue)
{
 spin_lock_bh(&queue->lock);
 __cw1200_queue_lock(queue);
 spin_unlock_bh(&queue->lock);
}
