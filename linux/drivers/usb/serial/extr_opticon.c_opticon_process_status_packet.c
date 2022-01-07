
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct opticon_private {int cts; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct opticon_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void opticon_process_status_packet(struct usb_serial_port *port,
     const unsigned char *buf, size_t len)
{
 struct opticon_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 if (buf[0] == 0x00)
  priv->cts = 0;
 else
  priv->cts = 1;
 spin_unlock_irqrestore(&priv->lock, flags);
}
