
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
struct ap_queue {scalar_t__ queue_count; int state; int qid; scalar_t__ reply; } ;
typedef enum ap_wait { ____Placeholder_ap_wait } ap_wait ;
 int AP_STATE_BORKED ;
 int AP_STATE_IDLE ;
 int AP_STATE_SETIRQ_WAIT ;
 int AP_STATE_WORKING ;
 int AP_WAIT_AGAIN ;
 int AP_WAIT_NONE ;
 int AP_WAIT_TIMEOUT ;
 void* ap_airq_ptr () ;
 int ap_queue_enable_interruption (struct ap_queue*,void*) ;
 struct ap_queue_status ap_sm_recv (struct ap_queue*) ;
 struct ap_queue_status ap_tapq (int ,int *) ;

__attribute__((used)) static enum ap_wait ap_sm_reset_wait(struct ap_queue *aq)
{
 struct ap_queue_status status;
 void *lsi_ptr;

 if (aq->queue_count > 0 && aq->reply)

  status = ap_sm_recv(aq);
 else

  status = ap_tapq(aq->qid, ((void*)0));

 switch (status.response_code) {
 case 130:
  lsi_ptr = ap_airq_ptr();
  if (lsi_ptr && ap_queue_enable_interruption(aq, lsi_ptr) == 0)
   aq->state = AP_STATE_SETIRQ_WAIT;
  else
   aq->state = (aq->queue_count > 0) ?
    AP_STATE_WORKING : AP_STATE_IDLE;
  return AP_WAIT_AGAIN;
 case 133:
 case 128:
  return AP_WAIT_TIMEOUT;
 case 129:
 case 131:
 case 132:
 default:
  aq->state = AP_STATE_BORKED;
  return AP_WAIT_NONE;
 }
}
