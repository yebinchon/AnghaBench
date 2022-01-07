
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct async_icount {int frame; int parity; int overrun; int brk; } ;
struct usb_serial_port {struct async_icount icount; } ;
struct qt2_port_private {int shadowLSR; int lock; } ;


 int UART_LSR_BI ;
 int UART_LSR_BRK_ERROR_BITS ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qt2_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void qt2_update_lsr(struct usb_serial_port *port, unsigned char *ch)
{
 struct qt2_port_private *port_priv;
 struct async_icount *icount;
 unsigned long flags;
 u8 newLSR = (u8) *ch;

 port_priv = usb_get_serial_port_data(port);

 if (newLSR & UART_LSR_BI)
  newLSR &= (u8) (UART_LSR_OE | UART_LSR_BI);

 spin_lock_irqsave(&port_priv->lock, flags);
 port_priv->shadowLSR = newLSR;
 spin_unlock_irqrestore(&port_priv->lock, flags);

 icount = &port->icount;

 if (newLSR & UART_LSR_BRK_ERROR_BITS) {

  if (newLSR & UART_LSR_BI)
   icount->brk++;

  if (newLSR & UART_LSR_OE)
   icount->overrun++;

  if (newLSR & UART_LSR_PE)
   icount->parity++;

  if (newLSR & UART_LSR_FE)
   icount->frame++;
 }

}
