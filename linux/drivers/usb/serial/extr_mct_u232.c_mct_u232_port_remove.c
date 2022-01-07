
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct mct_u232_private {int dummy; } ;


 int kfree (struct mct_u232_private*) ;
 struct mct_u232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mct_u232_port_remove(struct usb_serial_port *port)
{
 struct mct_u232_private *priv;

 priv = usb_get_serial_port_data(port);
 kfree(priv);

 return 0;
}
