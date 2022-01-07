
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_b_host; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct dwc2_hsotg {int dummy; } ;


 int _dwc2_hcd_start (struct usb_hcd*) ;
 int dwc2_hcd_is_b_host (struct dwc2_hsotg*) ;
 struct usb_hcd* dwc2_hsotg_to_hcd (struct dwc2_hsotg*) ;

__attribute__((used)) static void dwc2_host_start(struct dwc2_hsotg *hsotg)
{
 struct usb_hcd *hcd = dwc2_hsotg_to_hcd(hsotg);

 hcd->self.is_b_host = dwc2_hcd_is_b_host(hsotg);
 _dwc2_hcd_start(hcd);
}
