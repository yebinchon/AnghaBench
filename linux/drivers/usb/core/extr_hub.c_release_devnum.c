
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int devnum; TYPE_2__* bus; } ;
struct TYPE_3__ {int devicemap; } ;
struct TYPE_4__ {TYPE_1__ devmap; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static void release_devnum(struct usb_device *udev)
{
 if (udev->devnum > 0) {
  clear_bit(udev->devnum, udev->bus->devmap.devicemap);
  udev->devnum = -1;
 }
}
