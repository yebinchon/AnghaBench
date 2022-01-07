
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_b_host; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct dwc2_hsotg {int dummy; } ;


 struct usb_hcd* dwc2_hsotg_to_hcd (struct dwc2_hsotg*) ;

__attribute__((used)) static void dwc2_host_disconnect(struct dwc2_hsotg *hsotg)
{
 struct usb_hcd *hcd = dwc2_hsotg_to_hcd(hsotg);

 hcd->self.is_b_host = 0;
}
