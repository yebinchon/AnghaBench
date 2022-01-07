
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
struct ap_queue {void* state; int queue_count; int reply; } ;
typedef enum ap_wait { ____Placeholder_ap_wait } ap_wait ;




 void* AP_STATE_BORKED ;
 void* AP_STATE_IDLE ;
 void* AP_STATE_WORKING ;
 int AP_WAIT_AGAIN ;
 int AP_WAIT_INTERRUPT ;
 int AP_WAIT_NONE ;
 struct ap_queue_status ap_sm_recv (struct ap_queue*) ;

__attribute__((used)) static enum ap_wait ap_sm_read(struct ap_queue *aq)
{
 struct ap_queue_status status;

 if (!aq->reply)
  return AP_WAIT_NONE;
 status = ap_sm_recv(aq);
 switch (status.response_code) {
 case 129:
  if (aq->queue_count > 0) {
   aq->state = AP_STATE_WORKING;
   return AP_WAIT_AGAIN;
  }
  aq->state = AP_STATE_IDLE;
  return AP_WAIT_NONE;
 case 128:
  if (aq->queue_count > 0)
   return AP_WAIT_INTERRUPT;
  aq->state = AP_STATE_IDLE;
  return AP_WAIT_NONE;
 default:
  aq->state = AP_STATE_BORKED;
  return AP_WAIT_NONE;
 }
}
