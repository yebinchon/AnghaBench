
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;


 int usb_gsi_openclose (struct usb_serial_port*,int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void wishbone_serial_close(struct usb_serial_port *port)
{
 usb_serial_generic_close(port);
 usb_gsi_openclose(port, 0);
}
