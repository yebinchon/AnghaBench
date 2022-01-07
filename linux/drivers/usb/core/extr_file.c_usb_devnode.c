
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct usb_class_driver {char* (* devnode ) (struct device*,int *) ;} ;
struct device {int dummy; } ;


 struct usb_class_driver* dev_get_drvdata (struct device*) ;
 char* stub1 (struct device*,int *) ;

__attribute__((used)) static char *usb_devnode(struct device *dev, umode_t *mode)
{
 struct usb_class_driver *drv;

 drv = dev_get_drvdata(dev);
 if (!drv || !drv->devnode)
  return ((void*)0);
 return drv->devnode(dev, mode);
}
