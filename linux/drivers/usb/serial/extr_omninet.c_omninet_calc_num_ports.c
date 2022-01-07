
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_endpoints {int num_bulk_out; int * bulk_out; } ;
struct usb_serial {int dummy; } ;



__attribute__((used)) static int omninet_calc_num_ports(struct usb_serial *serial,
     struct usb_serial_endpoints *epds)
{

 epds->bulk_out[0] = epds->bulk_out[1];
 epds->num_bulk_out = 1;

 return 1;
}
