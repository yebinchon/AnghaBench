
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_endpoints {int * bulk_out; } ;
struct usb_serial {TYPE_1__* type; } ;
struct TYPE_2__ {int num_ports; } ;



__attribute__((used)) static int clie_5_calc_num_ports(struct usb_serial *serial,
     struct usb_serial_endpoints *epds)
{
 epds->bulk_out[0] = epds->bulk_out[1];

 return serial->type->num_ports;
}
