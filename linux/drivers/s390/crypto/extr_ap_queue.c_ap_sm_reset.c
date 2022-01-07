
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
struct ap_queue {int state; int interrupt; int qid; } ;
typedef enum ap_wait { ____Placeholder_ap_wait } ap_wait ;


 int AP_INTR_DISABLED ;






 int AP_STATE_BORKED ;
 int AP_STATE_RESET_WAIT ;
 int AP_WAIT_NONE ;
 int AP_WAIT_TIMEOUT ;
 struct ap_queue_status ap_rapq (int ) ;

__attribute__((used)) static enum ap_wait ap_sm_reset(struct ap_queue *aq)
{
 struct ap_queue_status status;

 status = ap_rapq(aq->qid);
 switch (status.response_code) {
 case 130:
 case 128:
  aq->state = AP_STATE_RESET_WAIT;
  aq->interrupt = AP_INTR_DISABLED;
  return AP_WAIT_TIMEOUT;
 case 133:
  return AP_WAIT_TIMEOUT;
 case 129:
 case 131:
 case 132:
 default:
  aq->state = AP_STATE_BORKED;
  return AP_WAIT_NONE;
 }
}
