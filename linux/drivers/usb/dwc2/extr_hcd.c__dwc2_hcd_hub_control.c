
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hcd {int dummy; } ;


 int dwc2_hcd_hub_control (int ,int ,int ,int ,char*,int ) ;
 int dwc2_hcd_to_hsotg (struct usb_hcd*) ;

__attribute__((used)) static int _dwc2_hcd_hub_control(struct usb_hcd *hcd, u16 typereq, u16 wvalue,
     u16 windex, char *buf, u16 wlength)
{
 int retval = dwc2_hcd_hub_control(dwc2_hcd_to_hsotg(hcd), typereq,
       wvalue, windex, buf, wlength);
 return retval;
}
