
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int match_flags; int idProduct; int idVendor; } ;


 int USB_DEVICE_ID_MATCH_PRODUCT ;
 int USB_DEVICE_ID_MATCH_VENDOR ;
 TYPE_1__* generic_device_ids ;
 int product ;
 int serial_drivers ;
 int usb_serial_register_drivers (int ,char*,TYPE_1__*) ;
 int vendor ;

int usb_serial_generic_register(void)
{
 int retval = 0;
 return retval;
}
