
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int bcdDevice; int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct ignore_entry {int vid; unsigned int pid; unsigned int bcdmin; unsigned int bcdmax; } ;


 int ENXIO ;
 struct ignore_entry* ignore_ids ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 unsigned int le16_to_cpu (int ) ;

int usb_usual_ignore_device(struct usb_interface *intf)
{
 struct usb_device *udev;
 unsigned vid, pid, bcd;
 struct ignore_entry *p;

 udev = interface_to_usbdev(intf);
 vid = le16_to_cpu(udev->descriptor.idVendor);
 pid = le16_to_cpu(udev->descriptor.idProduct);
 bcd = le16_to_cpu(udev->descriptor.bcdDevice);

 for (p = ignore_ids; p->vid; ++p) {
  if (p->vid == vid && p->pid == pid &&
    p->bcdmin <= bcd && p->bcdmax >= bcd)
   return -ENXIO;
 }
 return 0;
}
