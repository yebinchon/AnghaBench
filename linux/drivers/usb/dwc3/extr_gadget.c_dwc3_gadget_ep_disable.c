
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct dwc3_ep {int flags; int name; struct dwc3* dwc; } ;
struct dwc3 {int lock; int dev; } ;


 int DWC3_EP_ENABLED ;
 int EINVAL ;
 int __dwc3_gadget_ep_disable (struct dwc3_ep*) ;
 scalar_t__ dev_WARN_ONCE (int ,int,char*,int ) ;
 int pr_debug (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dwc3_ep* to_dwc3_ep (struct usb_ep*) ;

__attribute__((used)) static int dwc3_gadget_ep_disable(struct usb_ep *ep)
{
 struct dwc3_ep *dep;
 struct dwc3 *dwc;
 unsigned long flags;
 int ret;

 if (!ep) {
  pr_debug("dwc3: invalid parameters\n");
  return -EINVAL;
 }

 dep = to_dwc3_ep(ep);
 dwc = dep->dwc;

 if (dev_WARN_ONCE(dwc->dev, !(dep->flags & DWC3_EP_ENABLED),
     "%s is already disabled\n",
     dep->name))
  return 0;

 spin_lock_irqsave(&dwc->lock, flags);
 ret = __dwc3_gadget_ep_disable(dep);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return ret;
}
