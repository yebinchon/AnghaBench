
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_serial_endpoints {int num_interrupt_in; int num_bulk_in; int * interrupt_in; int * bulk_in; } ;
struct usb_serial {TYPE_3__* interface; TYPE_2__* dev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int idVendor; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 int ENODEV ;
 unsigned int HANDSPRING_VENDOR_ID ;
 unsigned int KYOCERA_VENDOR_ID ;
 int dev_err (int *,char*) ;
 unsigned int le16_to_cpu (int ) ;
 int swap (int ,int ) ;
 scalar_t__ usb_get_serial_data (struct usb_serial*) ;
 int usb_set_serial_data (struct usb_serial*,int *) ;

__attribute__((used)) static int visor_calc_num_ports(struct usb_serial *serial,
     struct usb_serial_endpoints *epds)
{
 unsigned int vid = le16_to_cpu(serial->dev->descriptor.idVendor);
 int num_ports = (int)(long)(usb_get_serial_data(serial));

 if (num_ports)
  usb_set_serial_data(serial, ((void*)0));





 if (!(vid == HANDSPRING_VENDOR_ID || vid == KYOCERA_VENDOR_ID) ||
   epds->num_interrupt_in == 0)
  goto out;

 if (epds->num_bulk_in < 2 || epds->num_interrupt_in < 2) {
  dev_err(&serial->interface->dev, "missing endpoints\n");
  return -ENODEV;
 }
 swap(epds->bulk_in[0], epds->bulk_in[1]);
 swap(epds->interrupt_in[0], epds->interrupt_in[1]);
out:
 return num_ports;
}
