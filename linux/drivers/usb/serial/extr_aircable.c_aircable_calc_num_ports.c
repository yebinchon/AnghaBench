
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_endpoints {scalar_t__ num_bulk_out; } ;
struct usb_serial {TYPE_1__* interface; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static int aircable_calc_num_ports(struct usb_serial *serial,
     struct usb_serial_endpoints *epds)
{

 if (epds->num_bulk_out == 0) {
  dev_dbg(&serial->interface->dev,
   "ignoring interface with no bulk-out endpoints\n");
  return -ENODEV;
 }

 return 1;
}
