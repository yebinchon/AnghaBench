
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * type; int release; } ;
struct TYPE_4__ {int device_type; TYPE_1__ device; } ;
struct ap_queue {int timeout; int requestq; int pendingq; int list; int lock; int interrupt; int state; int qid; TYPE_2__ ap_dev; } ;
typedef int ap_qid_t ;


 int AP_INTR_DISABLED ;
 int AP_STATE_RESET_START ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ap_queue_device_release ;
 int ap_queue_type ;
 int ap_request_timeout ;
 struct ap_queue* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct ap_queue *ap_queue_create(ap_qid_t qid, int device_type)
{
 struct ap_queue *aq;

 aq = kzalloc(sizeof(*aq), GFP_KERNEL);
 if (!aq)
  return ((void*)0);
 aq->ap_dev.device.release = ap_queue_device_release;
 aq->ap_dev.device.type = &ap_queue_type;
 aq->ap_dev.device_type = device_type;
 aq->qid = qid;
 aq->state = AP_STATE_RESET_START;
 aq->interrupt = AP_INTR_DISABLED;
 spin_lock_init(&aq->lock);
 INIT_LIST_HEAD(&aq->list);
 INIT_LIST_HEAD(&aq->pendingq);
 INIT_LIST_HEAD(&aq->requestq);
 timer_setup(&aq->timeout, ap_request_timeout, 0);

 return aq;
}
