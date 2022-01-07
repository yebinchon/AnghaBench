
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int timeout; int lock; int state; } ;


 int AP_STATE_REMOVE ;
 int __ap_flush_queue (struct ap_queue*) ;
 int del_timer_sync (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ap_queue_prepare_remove(struct ap_queue *aq)
{
 spin_lock_bh(&aq->lock);

 __ap_flush_queue(aq);

 aq->state = AP_STATE_REMOVE;
 spin_unlock_bh(&aq->lock);
 del_timer_sync(&aq->timeout);
}
