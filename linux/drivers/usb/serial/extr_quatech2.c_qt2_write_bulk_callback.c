
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct urb {struct usb_serial_port* context; } ;
struct qt2_port_private {int urb_in_use; int urb_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qt2_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_serial_port_softint (struct usb_serial_port*) ;

__attribute__((used)) static void qt2_write_bulk_callback(struct urb *urb)
{
 struct usb_serial_port *port;
 struct qt2_port_private *port_priv;
 unsigned long flags;

 port = urb->context;
 port_priv = usb_get_serial_port_data(port);

 spin_lock_irqsave(&port_priv->urb_lock, flags);

 port_priv->urb_in_use = 0;
 usb_serial_port_softint(port);

 spin_unlock_irqrestore(&port_priv->urb_lock, flags);

}
