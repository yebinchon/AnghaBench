
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct dwc2_hsotg {int dummy; } ;


 int dwc2_hcd_is_status_changed (struct dwc2_hsotg*,int) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;

__attribute__((used)) static int _dwc2_hcd_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);

 buf[0] = dwc2_hcd_is_status_changed(hsotg, 1) << 1;
 return buf[0] != 0;
}
