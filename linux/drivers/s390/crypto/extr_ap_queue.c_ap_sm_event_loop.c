
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int dummy; } ;
typedef enum ap_wait { ____Placeholder_ap_wait } ap_wait ;
typedef enum ap_event { ____Placeholder_ap_event } ap_event ;


 int AP_WAIT_AGAIN ;
 int ap_sm_event (struct ap_queue*,int) ;

enum ap_wait ap_sm_event_loop(struct ap_queue *aq, enum ap_event event)
{
 enum ap_wait wait;

 while ((wait = ap_sm_event(aq, event)) == AP_WAIT_AGAIN)
  ;
 return wait;
}
