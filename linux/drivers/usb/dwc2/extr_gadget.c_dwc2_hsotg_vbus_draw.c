
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct dwc2_hsotg {int uphy; } ;


 int ENOTSUPP ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 struct dwc2_hsotg* to_hsotg (struct usb_gadget*) ;
 int usb_phy_set_power (int ,unsigned int) ;

__attribute__((used)) static int dwc2_hsotg_vbus_draw(struct usb_gadget *gadget, unsigned int mA)
{
 struct dwc2_hsotg *hsotg = to_hsotg(gadget);

 if (IS_ERR_OR_NULL(hsotg->uphy))
  return -ENOTSUPP;
 return usb_phy_set_power(hsotg->uphy, mA);
}
