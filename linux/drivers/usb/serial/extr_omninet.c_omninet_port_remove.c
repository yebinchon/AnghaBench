
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct omninet_data {int dummy; } ;


 int kfree (struct omninet_data*) ;
 struct omninet_data* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int omninet_port_remove(struct usb_serial_port *port)
{
 struct omninet_data *od;

 od = usb_get_serial_port_data(port);
 kfree(od);

 return 0;
}
