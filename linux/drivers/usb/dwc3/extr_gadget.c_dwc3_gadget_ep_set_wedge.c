
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct dwc3_ep {int number; int flags; struct dwc3* dwc; } ;
struct dwc3 {int lock; } ;


 int DWC3_EP_WEDGE ;
 int __dwc3_gadget_ep0_set_halt (struct usb_ep*,int) ;
 int __dwc3_gadget_ep_set_halt (struct dwc3_ep*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dwc3_ep* to_dwc3_ep (struct usb_ep*) ;

__attribute__((used)) static int dwc3_gadget_ep_set_wedge(struct usb_ep *ep)
{
 struct dwc3_ep *dep = to_dwc3_ep(ep);
 struct dwc3 *dwc = dep->dwc;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&dwc->lock, flags);
 dep->flags |= DWC3_EP_WEDGE;

 if (dep->number == 0 || dep->number == 1)
  ret = __dwc3_gadget_ep0_set_halt(ep, 1);
 else
  ret = __dwc3_gadget_ep_set_halt(dep, 1, 0);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return ret;
}
