
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct ti_port {int dummy; } ;


 int kfree (struct ti_port*) ;
 struct ti_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int ti_port_remove(struct usb_serial_port *port)
{
 struct ti_port *tport;

 tport = usb_get_serial_port_data(port);
 kfree(tport);

 return 0;
}
