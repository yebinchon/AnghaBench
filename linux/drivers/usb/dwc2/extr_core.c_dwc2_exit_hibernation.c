
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;


 int dwc2_gadget_exit_hibernation (struct dwc2_hsotg*,int,int) ;
 int dwc2_host_exit_hibernation (struct dwc2_hsotg*,int,int) ;

int dwc2_exit_hibernation(struct dwc2_hsotg *hsotg, int rem_wakeup,
     int reset, int is_host)
{
 if (is_host)
  return dwc2_host_exit_hibernation(hsotg, rem_wakeup, reset);
 else
  return dwc2_gadget_exit_hibernation(hsotg, rem_wakeup, reset);
}
