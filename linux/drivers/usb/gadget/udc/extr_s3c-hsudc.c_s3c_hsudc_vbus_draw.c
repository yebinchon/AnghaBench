
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct s3c_hsudc {int transceiver; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int IS_ERR_OR_NULL (int ) ;
 struct s3c_hsudc* to_hsudc (struct usb_gadget*) ;
 int usb_phy_set_power (int ,unsigned int) ;

__attribute__((used)) static int s3c_hsudc_vbus_draw(struct usb_gadget *gadget, unsigned mA)
{
 struct s3c_hsudc *hsudc = to_hsudc(gadget);

 if (!hsudc)
  return -ENODEV;

 if (!IS_ERR_OR_NULL(hsudc->transceiver))
  return usb_phy_set_power(hsudc->transceiver, mA);

 return -EOPNOTSUPP;
}
