
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int connection_state; int driver; struct device* host_dev; } ;
struct device {int dummy; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;





 int dev_err (struct device*,char*) ;
 struct renesas_usb3* dev_get_drvdata (struct device*) ;
 int device_attach (struct device*) ;
 int device_release_driver (struct device*) ;
 int renesas_usb3_role_switch_get (struct device*) ;
 int usb3_connect (struct renesas_usb3*) ;
 int usb3_disconnect (struct renesas_usb3*) ;
 int usb3_set_mode (struct renesas_usb3*,int) ;
 int usb3_vbus_out (struct renesas_usb3*,int) ;

__attribute__((used)) static void handle_ext_role_switch_states(struct device *dev,
         enum usb_role role)
{
 struct renesas_usb3 *usb3 = dev_get_drvdata(dev);
 struct device *host = usb3->host_dev;
 enum usb_role cur_role = renesas_usb3_role_switch_get(dev);

 switch (role) {
 case 128:
  usb3->connection_state = 128;
  if (usb3->driver)
   usb3_disconnect(usb3);
  usb3_vbus_out(usb3, 0);
  break;
 case 130:
  if (usb3->connection_state == 128) {
   usb3->connection_state = 130;
   usb3_set_mode(usb3, 0);
   if (usb3->driver)
    usb3_connect(usb3);
  } else if (cur_role == 129) {
   device_release_driver(host);
   usb3_set_mode(usb3, 0);
   if (usb3->driver)
    usb3_connect(usb3);
  }
  usb3_vbus_out(usb3, 0);
  break;
 case 129:
  if (usb3->connection_state == 128) {
   if (usb3->driver)
    usb3_disconnect(usb3);

   usb3->connection_state = 129;
   usb3_set_mode(usb3, 1);
   usb3_vbus_out(usb3, 1);
   if (device_attach(host) < 0)
    dev_err(dev, "device_attach(host) failed\n");
  } else if (cur_role == 130) {
   usb3_disconnect(usb3);

   usb3_set_mode(usb3, 1);

   if (device_attach(host) < 0)
    dev_err(dev, "device_attach(host) failed\n");
  }
  break;
 default:
  break;
 }
}
