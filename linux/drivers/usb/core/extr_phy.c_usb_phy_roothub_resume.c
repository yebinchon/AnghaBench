
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_roothub {int dummy; } ;
struct device {int dummy; } ;


 int device_may_wakeup (struct device*) ;
 int usb_phy_roothub_exit (struct usb_phy_roothub*) ;
 int usb_phy_roothub_init (struct usb_phy_roothub*) ;
 int usb_phy_roothub_power_on (struct usb_phy_roothub*) ;

int usb_phy_roothub_resume(struct device *controller_dev,
      struct usb_phy_roothub *phy_roothub)
{
 int err;


 if (!device_may_wakeup(controller_dev)) {
  err = usb_phy_roothub_init(phy_roothub);
  if (err)
   return err;
 }

 err = usb_phy_roothub_power_on(phy_roothub);


 if (err && !device_may_wakeup(controller_dev))
  usb_phy_roothub_exit(phy_roothub);

 return err;
}
