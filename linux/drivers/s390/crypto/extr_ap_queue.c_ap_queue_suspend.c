
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int lock; int state; } ;
struct ap_device {int device; } ;


 int AP_EVENT_POLL ;
 int AP_STATE_BORKED ;
 int AP_STATE_SUSPEND_WAIT ;
 scalar_t__ AP_WAIT_NONE ;
 scalar_t__ ap_sm_event (struct ap_queue*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_queue* to_ap_queue (int *) ;

void ap_queue_suspend(struct ap_device *ap_dev)
{
 struct ap_queue *aq = to_ap_queue(&ap_dev->device);


 spin_lock_bh(&aq->lock);
 aq->state = AP_STATE_SUSPEND_WAIT;
 while (ap_sm_event(aq, AP_EVENT_POLL) != AP_WAIT_NONE)
  ;
 aq->state = AP_STATE_BORKED;
 spin_unlock_bh(&aq->lock);
}
