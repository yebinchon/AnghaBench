
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct pxa_udc {int transceiver; } ;


 int EOPNOTSUPP ;
 int IS_ERR_OR_NULL (int ) ;
 struct pxa_udc* to_gadget_udc (struct usb_gadget*) ;
 int usb_phy_set_power (int ,unsigned int) ;

__attribute__((used)) static int pxa_udc_vbus_draw(struct usb_gadget *_gadget, unsigned mA)
{
 struct pxa_udc *udc;

 udc = to_gadget_udc(_gadget);
 if (!IS_ERR_OR_NULL(udc->transceiver))
  return usb_phy_set_power(udc->transceiver, mA);
 return -EOPNOTSUPP;
}
