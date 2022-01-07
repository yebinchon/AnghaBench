
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct cypress_private {int write_fifo; } ;


 int kfifo_free (int *) ;
 int kfree (struct cypress_private*) ;
 struct cypress_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int cypress_port_remove(struct usb_serial_port *port)
{
 struct cypress_private *priv;

 priv = usb_get_serial_port_data(port);

 kfifo_free(&priv->write_fifo);
 kfree(priv);

 return 0;
}
