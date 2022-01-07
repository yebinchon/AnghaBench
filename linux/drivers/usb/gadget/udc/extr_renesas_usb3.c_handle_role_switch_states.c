
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {struct device* host_dev; } ;
struct device {int dummy; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 int USB_ROLE_DEVICE ;
 int USB_ROLE_HOST ;
 int dev_err (struct device*,char*) ;
 struct renesas_usb3* dev_get_drvdata (struct device*) ;
 scalar_t__ device_attach (struct device*) ;
 int device_release_driver (struct device*) ;
 int renesas_usb3_role_switch_get (struct device*) ;
 int usb3_set_mode (struct renesas_usb3*,int) ;

__attribute__((used)) static void handle_role_switch_states(struct device *dev,
         enum usb_role role)
{
 struct renesas_usb3 *usb3 = dev_get_drvdata(dev);
 struct device *host = usb3->host_dev;
 enum usb_role cur_role = renesas_usb3_role_switch_get(dev);

 if (cur_role == USB_ROLE_HOST && role == USB_ROLE_DEVICE) {
  device_release_driver(host);
  usb3_set_mode(usb3, 0);
 } else if (cur_role == USB_ROLE_DEVICE && role == USB_ROLE_HOST) {

  usb3_set_mode(usb3, 1);

  if (device_attach(host) < 0)
   dev_err(dev, "device_attach(host) failed\n");
 }
}
