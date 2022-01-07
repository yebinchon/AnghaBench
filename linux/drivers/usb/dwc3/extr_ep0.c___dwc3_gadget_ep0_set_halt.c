
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct dwc3_ep {struct dwc3* dwc; } ;
struct dwc3 {int dummy; } ;


 int dwc3_ep0_stall_and_restart (struct dwc3*) ;
 struct dwc3_ep* to_dwc3_ep (struct usb_ep*) ;

int __dwc3_gadget_ep0_set_halt(struct usb_ep *ep, int value)
{
 struct dwc3_ep *dep = to_dwc3_ep(ep);
 struct dwc3 *dwc = dep->dwc;

 dwc3_ep0_stall_and_restart(dwc);

 return 0;
}
