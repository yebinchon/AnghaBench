
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int serial; } ;
struct keyspan_pda_private {struct usb_serial_port* port; int serial; int unthrottle_work; int wakeup_work; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int keyspan_pda_request_unthrottle ;
 int keyspan_pda_wakeup_write ;
 struct keyspan_pda_private* kmalloc (int,int ) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct keyspan_pda_private*) ;

__attribute__((used)) static int keyspan_pda_port_probe(struct usb_serial_port *port)
{

 struct keyspan_pda_private *priv;

 priv = kmalloc(sizeof(struct keyspan_pda_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 INIT_WORK(&priv->wakeup_work, keyspan_pda_wakeup_write);
 INIT_WORK(&priv->unthrottle_work, keyspan_pda_request_unthrottle);
 priv->serial = port->serial;
 priv->port = port;

 usb_set_serial_port_data(port, priv);

 return 0;
}
