
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;
typedef enum musb_mode { ____Placeholder_musb_mode } musb_mode ;


 int MUSB_HOST ;
 int MUSB_OTG ;
 int MUSB_PERIPHERAL ;




 int usb_get_dr_mode (struct device*) ;

enum musb_mode musb_get_mode(struct device *dev)
{
 enum usb_dr_mode mode;

 mode = usb_get_dr_mode(dev);
 switch (mode) {
 case 131:
  return MUSB_HOST;
 case 129:
  return MUSB_PERIPHERAL;
 case 130:
 case 128:
 default:
  return MUSB_OTG;
 }
}
