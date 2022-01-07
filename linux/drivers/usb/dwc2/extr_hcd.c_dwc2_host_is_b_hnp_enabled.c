
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_hnp_enable; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct dwc2_hsotg {int dummy; } ;


 struct usb_hcd* dwc2_hsotg_to_hcd (struct dwc2_hsotg*) ;

__attribute__((used)) static int dwc2_host_is_b_hnp_enabled(struct dwc2_hsotg *hsotg)
{
 struct usb_hcd *hcd = dwc2_hsotg_to_hcd(hsotg);

 return hcd->self.b_hnp_enable;
}
