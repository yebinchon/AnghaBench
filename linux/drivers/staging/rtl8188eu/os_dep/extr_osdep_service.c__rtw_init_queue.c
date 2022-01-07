
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int lock; int queue; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void _rtw_init_queue(struct __queue *pqueue)
{
 INIT_LIST_HEAD(&pqueue->queue);
 spin_lock_init(&pqueue->lock);
}
