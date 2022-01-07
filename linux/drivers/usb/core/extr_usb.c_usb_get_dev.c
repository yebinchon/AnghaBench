
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;


 int get_device (int *) ;

struct usb_device *usb_get_dev(struct usb_device *dev)
{
 if (dev)
  get_device(&dev->dev);
 return dev;
}
