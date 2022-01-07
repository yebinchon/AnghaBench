
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int devnum; int dev; struct usb_device* parent; } ;
struct r8a66597_device {int address; } ;
struct r8a66597 {int dummy; } ;


 struct r8a66597_device* dev_get_drvdata (int *) ;

__attribute__((used)) static int get_parent_r8a66597_address(struct r8a66597 *r8a66597,
           struct usb_device *udev)
{
 struct r8a66597_device *dev;

 if (udev->parent && udev->parent->devnum != 1)
  udev = udev->parent;

 dev = dev_get_drvdata(&udev->dev);
 if (dev)
  return dev->address;
 else
  return 0;
}
