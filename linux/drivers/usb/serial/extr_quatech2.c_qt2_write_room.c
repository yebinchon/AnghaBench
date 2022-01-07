
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct qt2_port_private {int urb_lock; scalar_t__ urb_in_use; } ;


 int QT2_WRITE_BUFFER_SIZE ;
 int QT2_WRITE_CONTROL_SIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qt2_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int qt2_write_room(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct qt2_port_private *port_priv;
 unsigned long flags = 0;
 int r;

 port_priv = usb_get_serial_port_data(port);

 spin_lock_irqsave(&port_priv->urb_lock, flags);

 if (port_priv->urb_in_use)
  r = 0;
 else
  r = QT2_WRITE_BUFFER_SIZE - QT2_WRITE_CONTROL_SIZE;

 spin_unlock_irqrestore(&port_priv->urb_lock, flags);

 return r;
}
