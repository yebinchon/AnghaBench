
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int overrun; int parity; int frame; int brk; } ;
struct usb_serial_port {TYPE_1__ icount; } ;
struct ark3116_private {int lsr; int status_lock; } ;
typedef int __u8 ;


 int UART_LSR_BI ;
 int UART_LSR_BRK_ERROR_BITS ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ark3116_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void ark3116_update_lsr(struct usb_serial_port *port, __u8 lsr)
{
 struct ark3116_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;

 spin_lock_irqsave(&priv->status_lock, flags);

 priv->lsr |= lsr;
 spin_unlock_irqrestore(&priv->status_lock, flags);

 if (lsr&UART_LSR_BRK_ERROR_BITS) {
  if (lsr & UART_LSR_BI)
   port->icount.brk++;
  if (lsr & UART_LSR_FE)
   port->icount.frame++;
  if (lsr & UART_LSR_PE)
   port->icount.parity++;
  if (lsr & UART_LSR_OE)
   port->icount.overrun++;
 }
}
