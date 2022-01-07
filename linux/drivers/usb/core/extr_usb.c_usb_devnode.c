
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct usb_device {int devnum; TYPE_1__* bus; } ;
struct device {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_2__ {int busnum; } ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ,int ) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static char *usb_devnode(struct device *dev,
    umode_t *mode, kuid_t *uid, kgid_t *gid)
{
 struct usb_device *usb_dev;

 usb_dev = to_usb_device(dev);
 return kasprintf(GFP_KERNEL, "bus/usb/%03d/%03d",
    usb_dev->bus->busnum, usb_dev->devnum);
}
