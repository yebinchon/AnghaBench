
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_serial {TYPE_3__* interface; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENODEV ;

__attribute__((used)) static int xsens_mt_probe(struct usb_serial *serial,
     const struct usb_device_id *id)
{
 if (serial->interface->cur_altsetting->desc.bInterfaceNumber == 1)
  return 0;

 return -ENODEV;
}
