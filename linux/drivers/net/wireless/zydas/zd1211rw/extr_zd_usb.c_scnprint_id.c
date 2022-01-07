
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idProduct; int idVendor; } ;
struct usb_device {int speed; TYPE_1__ descriptor; } ;


 int get_bcdDevice (struct usb_device*) ;
 int le16_to_cpu (int ) ;
 int scnprintf (char*,size_t,char*,int ,int ,int ,int ) ;
 int speed (int ) ;

__attribute__((used)) static int scnprint_id(struct usb_device *udev, char *buffer, size_t size)
{
 return scnprintf(buffer, size, "%04hx:%04hx v%04hx %s",
  le16_to_cpu(udev->descriptor.idVendor),
  le16_to_cpu(udev->descriptor.idProduct),
  get_bcdDevice(udev),
  speed(udev->speed));
}
