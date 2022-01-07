
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whiteheat_private {int dummy; } ;
struct usb_serial_port {int dummy; } ;


 int kfree (struct whiteheat_private*) ;
 struct whiteheat_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int whiteheat_port_remove(struct usb_serial_port *port)
{
 struct whiteheat_private *info;

 info = usb_get_serial_port_data(port);
 kfree(info);

 return 0;
}
