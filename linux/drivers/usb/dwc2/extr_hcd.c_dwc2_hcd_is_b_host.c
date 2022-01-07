
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {scalar_t__ op_state; } ;


 scalar_t__ OTG_STATE_B_HOST ;

int dwc2_hcd_is_b_host(struct dwc2_hsotg *hsotg)
{
 return hsotg->op_state == OTG_STATE_B_HOST;
}
