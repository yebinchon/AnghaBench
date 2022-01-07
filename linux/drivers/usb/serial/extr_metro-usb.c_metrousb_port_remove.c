
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct metrousb_private {int dummy; } ;


 int kfree (struct metrousb_private*) ;
 struct metrousb_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int metrousb_port_remove(struct usb_serial_port *port)
{
 struct metrousb_private *metro_priv;

 metro_priv = usb_get_serial_port_data(port);
 kfree(metro_priv);

 return 0;
}
