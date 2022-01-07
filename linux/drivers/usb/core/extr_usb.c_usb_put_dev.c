
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;


 int put_device (int *) ;

void usb_put_dev(struct usb_device *dev)
{
 if (dev)
  put_device(&dev->dev);
}
