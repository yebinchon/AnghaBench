
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; int wMaxPacketSize; } ;
struct dwc3_ep {int flags; int name; struct dwc3* dwc; } ;
struct dwc3 {int lock; int dev; } ;


 int DWC3_DEPCFG_ACTION_INIT ;
 int DWC3_EP_ENABLED ;
 int EINVAL ;
 scalar_t__ USB_DT_ENDPOINT ;
 int __dwc3_gadget_ep_enable (struct dwc3_ep*,int ) ;
 scalar_t__ dev_WARN_ONCE (int ,int,char*,int ) ;
 int pr_debug (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dwc3_ep* to_dwc3_ep (struct usb_ep*) ;

__attribute__((used)) static int dwc3_gadget_ep_enable(struct usb_ep *ep,
  const struct usb_endpoint_descriptor *desc)
{
 struct dwc3_ep *dep;
 struct dwc3 *dwc;
 unsigned long flags;
 int ret;

 if (!ep || !desc || desc->bDescriptorType != USB_DT_ENDPOINT) {
  pr_debug("dwc3: invalid parameters\n");
  return -EINVAL;
 }

 if (!desc->wMaxPacketSize) {
  pr_debug("dwc3: missing wMaxPacketSize\n");
  return -EINVAL;
 }

 dep = to_dwc3_ep(ep);
 dwc = dep->dwc;

 if (dev_WARN_ONCE(dwc->dev, dep->flags & DWC3_EP_ENABLED,
     "%s is already enabled\n",
     dep->name))
  return 0;

 spin_lock_irqsave(&dwc->lock, flags);
 ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return ret;
}
