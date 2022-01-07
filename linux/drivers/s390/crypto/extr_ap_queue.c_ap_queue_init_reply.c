
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int lock; struct ap_message* reply; } ;
struct ap_message {int dummy; } ;


 int AP_EVENT_POLL ;
 int ap_sm_event (struct ap_queue*,int ) ;
 int ap_wait (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ap_queue_init_reply(struct ap_queue *aq, struct ap_message *reply)
{
 aq->reply = reply;

 spin_lock_bh(&aq->lock);
 ap_wait(ap_sm_event(aq, AP_EVENT_POLL));
 spin_unlock_bh(&aq->lock);
}
