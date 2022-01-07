
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_roothub {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ device_may_wakeup (struct device*) ;
 int usb_phy_roothub_exit (struct usb_phy_roothub*) ;
 int usb_phy_roothub_power_off (struct usb_phy_roothub*) ;

int usb_phy_roothub_suspend(struct device *controller_dev,
       struct usb_phy_roothub *phy_roothub)
{
 usb_phy_roothub_power_off(phy_roothub);


 if (device_may_wakeup(controller_dev))
  return 0;

 return usb_phy_roothub_exit(phy_roothub);
}
