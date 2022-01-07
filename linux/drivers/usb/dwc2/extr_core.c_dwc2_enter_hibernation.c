
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ power_down; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;


 scalar_t__ DWC2_POWER_DOWN_PARAM_HIBERNATION ;
 int ENOTSUPP ;
 int dwc2_gadget_enter_hibernation (struct dwc2_hsotg*) ;
 int dwc2_host_enter_hibernation (struct dwc2_hsotg*) ;

int dwc2_enter_hibernation(struct dwc2_hsotg *hsotg, int is_host)
{
 if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_HIBERNATION)
  return -ENOTSUPP;

 if (is_host)
  return dwc2_host_enter_hibernation(hsotg);
 else
  return dwc2_gadget_enter_hibernation(hsotg);
}
