
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue {int dummy; } ;
typedef enum ap_wait { ____Placeholder_ap_wait } ap_wait ;


 int AP_WAIT_NONE ;

__attribute__((used)) static enum ap_wait ap_sm_nop(struct ap_queue *aq)
{
 return AP_WAIT_NONE;
}
