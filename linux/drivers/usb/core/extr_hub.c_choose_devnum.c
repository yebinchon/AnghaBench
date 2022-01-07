
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int portnum; int devnum; scalar_t__ wusb; struct usb_bus* bus; } ;
struct TYPE_2__ {int devicemap; } ;
struct usb_bus {int devnum_next; int devnum_next_mutex; TYPE_1__ devmap; } ;


 int BUG_ON (int ) ;
 int find_next_zero_bit (int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void choose_devnum(struct usb_device *udev)
{
 int devnum;
 struct usb_bus *bus = udev->bus;


 mutex_lock(&bus->devnum_next_mutex);
 if (udev->wusb) {
  devnum = udev->portnum + 1;
  BUG_ON(test_bit(devnum, bus->devmap.devicemap));
 } else {


  devnum = find_next_zero_bit(bus->devmap.devicemap, 128,
         bus->devnum_next);
  if (devnum >= 128)
   devnum = find_next_zero_bit(bus->devmap.devicemap,
          128, 1);
  bus->devnum_next = (devnum >= 127 ? 1 : devnum + 1);
 }
 if (devnum < 128) {
  set_bit(devnum, bus->devmap.devicemap);
  udev->devnum = devnum;
 }
 mutex_unlock(&bus->devnum_next_mutex);
}
