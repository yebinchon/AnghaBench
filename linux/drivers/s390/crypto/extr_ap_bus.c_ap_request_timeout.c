
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ap_queue {int lock; } ;


 int AP_EVENT_TIMEOUT ;
 int ap_sm_event (struct ap_queue*,int ) ;
 scalar_t__ ap_suspend_flag ;
 int ap_wait (int ) ;
 struct ap_queue* aq ;
 struct ap_queue* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timeout ;

void ap_request_timeout(struct timer_list *t)
{
 struct ap_queue *aq = from_timer(aq, t, timeout);

 if (ap_suspend_flag)
  return;
 spin_lock_bh(&aq->lock);
 ap_wait(ap_sm_event(aq, AP_EVENT_TIMEOUT));
 spin_unlock_bh(&aq->lock);
}
