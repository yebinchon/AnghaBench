
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {struct usb_device* dev; } ;
struct TYPE_2__ {int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static int is_irda(struct usb_serial *serial)
{
 struct usb_device *dev = serial->dev;
 if (le16_to_cpu(dev->descriptor.idVendor) == 0x18ec &&
   le16_to_cpu(dev->descriptor.idProduct) == 0x3118)
  return 1;
 return 0;
}
