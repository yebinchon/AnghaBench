
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usb_serial_endpoints {int * bulk_out; int * bulk_in; } ;
struct usb_serial {TYPE_2__* dev; } ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 scalar_t__ MOSCHIP_DEVICE_ID_7715 ;
 scalar_t__ le16_to_cpu (int ) ;
 int swap (int ,int ) ;

__attribute__((used)) static int mos77xx_calc_num_ports(struct usb_serial *serial,
     struct usb_serial_endpoints *epds)
{
 u16 product = le16_to_cpu(serial->dev->descriptor.idProduct);

 if (product == MOSCHIP_DEVICE_ID_7715) {







  swap(epds->bulk_in[0], epds->bulk_in[1]);
  swap(epds->bulk_out[0], epds->bulk_out[1]);

  return 1;
 }

 return 2;
}
