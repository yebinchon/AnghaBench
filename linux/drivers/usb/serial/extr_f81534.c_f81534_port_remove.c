
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct f81534_port_private {int lsr_work; } ;


 int flush_work (int *) ;
 struct f81534_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int f81534_port_remove(struct usb_serial_port *port)
{
 struct f81534_port_private *port_priv = usb_get_serial_port_data(port);

 flush_work(&port_priv->lsr_work);
 return 0;
}
