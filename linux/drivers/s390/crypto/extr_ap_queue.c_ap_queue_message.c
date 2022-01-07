
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ap_queue {int lock; TYPE_1__* card; int total_request_count; int requestq_count; int requestq; } ;
struct ap_message {int list; int receive; } ;
struct TYPE_2__ {int total_request_count; } ;


 int AP_EVENT_POLL ;
 int BUG_ON (int) ;
 int ap_sm_event_loop (struct ap_queue*,int ) ;
 int ap_wait (int ) ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ap_queue_message(struct ap_queue *aq, struct ap_message *ap_msg)
{



 BUG_ON(!ap_msg->receive);

 spin_lock_bh(&aq->lock);

 list_add_tail(&ap_msg->list, &aq->requestq);
 aq->requestq_count++;
 aq->total_request_count++;
 atomic_inc(&aq->card->total_request_count);

 ap_wait(ap_sm_event_loop(aq, AP_EVENT_POLL));
 spin_unlock_bh(&aq->lock);
}
