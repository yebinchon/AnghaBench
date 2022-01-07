
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct moschip_port {int dummy; } ;


 int kfree (struct moschip_port*) ;
 struct moschip_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mos7720_port_remove(struct usb_serial_port *port)
{
 struct moschip_port *mos7720_port;

 mos7720_port = usb_get_serial_port_data(port);
 kfree(mos7720_port);

 return 0;
}
