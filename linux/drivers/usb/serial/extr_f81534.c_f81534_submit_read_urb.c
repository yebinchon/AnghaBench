
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int * port; } ;
typedef int gfp_t ;


 int usb_serial_generic_submit_read_urbs (int ,int ) ;

__attribute__((used)) static int f81534_submit_read_urb(struct usb_serial *serial, gfp_t flags)
{
 return usb_serial_generic_submit_read_urbs(serial->port[0], flags);
}
