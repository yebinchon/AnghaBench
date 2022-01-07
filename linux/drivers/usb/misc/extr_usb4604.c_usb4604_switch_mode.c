
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb4604 {struct device* dev; } ;
struct device {int dummy; } ;
typedef enum usb4604_mode { ____Placeholder_usb4604_mode } usb4604_mode ;


 int EINVAL ;


 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int usb4604_connect (struct usb4604*) ;
 int usb4604_reset (struct usb4604*,int ) ;

__attribute__((used)) static int usb4604_switch_mode(struct usb4604 *hub, enum usb4604_mode mode)
{
 struct device *dev = hub->dev;
 int err = 0;

 switch (mode) {
 case 129:
  err = usb4604_connect(hub);
  break;

 case 128:
  usb4604_reset(hub, 0);
  dev_dbg(dev, "switched to STANDBY mode\n");
  break;

 default:
  dev_err(dev, "unknown mode is requested\n");
  err = -EINVAL;
  break;
 }

 return err;
}
