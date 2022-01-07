
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_hcd {int dummy; } ;
struct dwc2_hsotg {int lock; int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int dwc2_hcd_endpoint_reset (struct dwc2_hsotg*,struct usb_host_endpoint*) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void _dwc2_hcd_endpoint_reset(struct usb_hcd *hcd,
         struct usb_host_endpoint *ep)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);
 unsigned long flags;

 dev_dbg(hsotg->dev,
  "DWC OTG HCD EP RESET: bEndpointAddress=0x%02x\n",
  ep->desc.bEndpointAddress);

 spin_lock_irqsave(&hsotg->lock, flags);
 dwc2_hcd_endpoint_reset(hsotg, ep);
 spin_unlock_irqrestore(&hsotg->lock, flags);
}
