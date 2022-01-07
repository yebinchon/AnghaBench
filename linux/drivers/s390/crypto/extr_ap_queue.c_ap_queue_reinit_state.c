
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int lock; int state; } ;


 int AP_EVENT_POLL ;
 int AP_STATE_RESET_START ;
 int ap_sm_event (struct ap_queue*,int ) ;
 int ap_wait (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ap_queue_reinit_state(struct ap_queue *aq)
{
 spin_lock_bh(&aq->lock);
 aq->state = AP_STATE_RESET_START;
 ap_wait(ap_sm_event(aq, AP_EVENT_POLL));
 spin_unlock_bh(&aq->lock);
}
