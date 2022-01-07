
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;


 scalar_t__ mos7840_port_paranoia_check (struct usb_serial_port*,char const*) ;
 scalar_t__ mos7840_serial_paranoia_check (struct usb_serial*,char const*) ;

__attribute__((used)) static struct usb_serial *mos7840_get_usb_serial(struct usb_serial_port *port,
       const char *function)
{

 if (!port ||
     mos7840_port_paranoia_check(port, function) ||
     mos7840_serial_paranoia_check(port->serial, function)) {


  return ((void*)0);
 }

 return port->serial;
}
