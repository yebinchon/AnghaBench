
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int lock; int state; int qid; } ;


 int AP_STATE_UNBOUND ;
 int ap_zapq (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ap_queue_remove(struct ap_queue *aq)
{







 spin_lock_bh(&aq->lock);
 ap_zapq(aq->qid);
 aq->state = AP_STATE_UNBOUND;
 spin_unlock_bh(&aq->lock);
}
