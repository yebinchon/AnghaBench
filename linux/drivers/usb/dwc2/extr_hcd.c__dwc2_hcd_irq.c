
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct dwc2_hsotg {int dummy; } ;
typedef int irqreturn_t ;


 int dwc2_handle_hcd_intr (struct dwc2_hsotg*) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;

__attribute__((used)) static irqreturn_t _dwc2_hcd_irq(struct usb_hcd *hcd)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);

 return dwc2_handle_hcd_intr(hsotg);
}
