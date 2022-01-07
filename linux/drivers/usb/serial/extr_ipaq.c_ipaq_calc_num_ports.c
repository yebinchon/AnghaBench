
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_endpoints {int num_bulk_in; int num_bulk_out; int * bulk_out; int * bulk_in; } ;
struct usb_serial {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int ipaq_calc_num_ports(struct usb_serial *serial,
     struct usb_serial_endpoints *epds)
{





 if (epds->num_bulk_in == 0 || epds->num_bulk_out == 0)
  return -ENODEV;





 if (epds->num_bulk_in > 1 && epds->num_bulk_out > 1) {
  epds->bulk_in[0] = epds->bulk_in[1];
  epds->bulk_out[0] = epds->bulk_out[1];
 }





 epds->num_bulk_in = 1;
 epds->num_bulk_out = 1;

 return 1;
}
