
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int lock; } ;


 int __ap_flush_queue (struct ap_queue*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ap_flush_queue(struct ap_queue *aq)
{
 spin_lock_bh(&aq->lock);
 __ap_flush_queue(aq);
 spin_unlock_bh(&aq->lock);
}
