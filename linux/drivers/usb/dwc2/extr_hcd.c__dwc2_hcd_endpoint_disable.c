
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bEndpointAddress; } ;
struct usb_host_endpoint {int hcpriv; TYPE_1__ desc; } ;
struct usb_hcd {int dummy; } ;
struct dwc2_hsotg {int dev; } ;


 int dev_dbg (int ,char*,int ,int ) ;
 int dwc2_hcd_endpoint_disable (struct dwc2_hsotg*,struct usb_host_endpoint*,int) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;

__attribute__((used)) static void _dwc2_hcd_endpoint_disable(struct usb_hcd *hcd,
           struct usb_host_endpoint *ep)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);

 dev_dbg(hsotg->dev,
  "DWC OTG HCD EP DISABLE: bEndpointAddress=0x%02x, ep->hcpriv=%p\n",
  ep->desc.bEndpointAddress, ep->hcpriv);
 dwc2_hcd_endpoint_disable(hsotg, ep, 250);
}
