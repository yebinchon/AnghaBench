
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;
struct tty_struct {int dev; struct usb_serial_port* driver_data; } ;
struct metrousb_private {int lock; scalar_t__ throttled; } ;


 int GFP_ATOMIC ;
 int dev_err (int ,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct metrousb_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void metrousb_unthrottle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct metrousb_private *metro_priv = usb_get_serial_port_data(port);
 unsigned long flags = 0;
 int result = 0;


 spin_lock_irqsave(&metro_priv->lock, flags);
 metro_priv->throttled = 0;
 spin_unlock_irqrestore(&metro_priv->lock, flags);


 result = usb_submit_urb(port->interrupt_in_urb, GFP_ATOMIC);
 if (result)
  dev_err(tty->dev,
   "failed submitting interrupt in urb error code=%d\n",
   result);
}
