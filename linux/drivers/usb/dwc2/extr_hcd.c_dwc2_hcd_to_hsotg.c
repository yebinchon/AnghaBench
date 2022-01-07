
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrapper_priv_data {struct dwc2_hsotg* hsotg; } ;
struct usb_hcd {int hcd_priv; } ;
struct dwc2_hsotg {int dummy; } ;



__attribute__((used)) static struct dwc2_hsotg *dwc2_hcd_to_hsotg(struct usb_hcd *hcd)
{
 struct wrapper_priv_data *p;

 p = (struct wrapper_priv_data *)&hcd->hcd_priv;
 return p->hsotg;
}
