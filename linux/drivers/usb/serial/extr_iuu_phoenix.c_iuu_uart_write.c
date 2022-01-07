
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {int dummy; } ;
struct iuu_private {int lock; scalar_t__ writelen; scalar_t__ writebuf; } ;


 int ENOMEM ;
 int memcpy (scalar_t__,int const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct iuu_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int iuu_uart_write(struct tty_struct *tty, struct usb_serial_port *port,
     const u8 *buf, int count)
{
 struct iuu_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;

 if (count > 256)
  return -ENOMEM;

 spin_lock_irqsave(&priv->lock, flags);


 memcpy(priv->writebuf + priv->writelen, buf, count);
 priv->writelen += count;
 spin_unlock_irqrestore(&priv->lock, flags);

 return count;
}
