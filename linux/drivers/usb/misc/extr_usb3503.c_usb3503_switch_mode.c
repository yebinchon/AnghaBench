
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb3503 {struct device* dev; } ;
struct device {int dummy; } ;
typedef enum usb3503_mode { ____Placeholder_usb3503_mode } usb3503_mode ;


 int EINVAL ;


 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int usb3503_connect (struct usb3503*) ;
 int usb3503_reset (struct usb3503*,int ) ;

__attribute__((used)) static int usb3503_switch_mode(struct usb3503 *hub, enum usb3503_mode mode)
{
 struct device *dev = hub->dev;
 int err = 0;

 switch (mode) {
 case 129:
  err = usb3503_connect(hub);
  break;

 case 128:
  usb3503_reset(hub, 0);
  dev_info(dev, "switched to STANDBY mode\n");
  break;

 default:
  dev_err(dev, "unknown mode is requested\n");
  err = -EINVAL;
  break;
 }

 return err;
}
