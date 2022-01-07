
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct edgeport_port {int dummy; } ;


 int tx_active (struct edgeport_port*) ;
 struct edgeport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static bool edge_tx_empty(struct usb_serial_port *port)
{
 struct edgeport_port *edge_port = usb_get_serial_port_data(port);
 int ret;

 ret = tx_active(edge_port);
 if (ret > 0)
  return 0;

 return 1;
}
