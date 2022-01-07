
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {scalar_t__ speed; } ;


 unsigned int BIT (int) ;
 scalar_t__ USB_SPEED_SUPER ;

__attribute__((used)) static void dwc3_gadget_hibernation_interrupt(struct dwc3 *dwc,
  unsigned int evtinfo)
{
 unsigned int is_ss = evtinfo & BIT(4);
 if (is_ss ^ (dwc->speed == USB_SPEED_SUPER))
  return;


}
