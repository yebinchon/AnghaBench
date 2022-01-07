
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int irq_enabled; int response_code; } ;
struct ap_queue {scalar_t__ queue_count; int state; int interrupt; int qid; scalar_t__ reply; } ;
typedef enum ap_wait { ____Placeholder_ap_wait } ap_wait ;


 int AP_INTR_ENABLED ;


 int AP_STATE_BORKED ;
 int AP_STATE_IDLE ;
 int AP_STATE_WORKING ;
 int AP_WAIT_AGAIN ;
 int AP_WAIT_NONE ;
 int AP_WAIT_TIMEOUT ;
 struct ap_queue_status ap_sm_recv (struct ap_queue*) ;
 struct ap_queue_status ap_tapq (int ,int *) ;

__attribute__((used)) static enum ap_wait ap_sm_setirq_wait(struct ap_queue *aq)
{
 struct ap_queue_status status;

 if (aq->queue_count > 0 && aq->reply)

  status = ap_sm_recv(aq);
 else

  status = ap_tapq(aq->qid, ((void*)0));

 if (status.irq_enabled == 1) {

  aq->interrupt = AP_INTR_ENABLED;
  aq->state = (aq->queue_count > 0) ?
   AP_STATE_WORKING : AP_STATE_IDLE;
 }

 switch (status.response_code) {
 case 129:
  if (aq->queue_count > 0)
   return AP_WAIT_AGAIN;

 case 128:
  return AP_WAIT_TIMEOUT;
 default:
  aq->state = AP_STATE_BORKED;
  return AP_WAIT_NONE;
 }
}
