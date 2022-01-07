
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int overrun; int frame; int parity; int brk; } ;
struct usb_serial_port {int port; TYPE_1__ icount; } ;
struct ssu100_port_private {int shadowLSR; int status_lock; } ;


 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 int TTY_OVERRUN ;
 char TTY_PARITY ;
 int UART_LSR_BI ;
 int UART_LSR_BRK_ERROR_BITS ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_insert_flip_char (int *,int ,int ) ;
 struct ssu100_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_serial_handle_break (struct usb_serial_port*) ;

__attribute__((used)) static void ssu100_update_lsr(struct usb_serial_port *port, u8 lsr,
         char *tty_flag)
{
 struct ssu100_port_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;

 spin_lock_irqsave(&priv->status_lock, flags);
 priv->shadowLSR = lsr;
 spin_unlock_irqrestore(&priv->status_lock, flags);

 *tty_flag = TTY_NORMAL;
 if (lsr & UART_LSR_BRK_ERROR_BITS) {


  if (lsr & UART_LSR_BI) {
   port->icount.brk++;
   *tty_flag = TTY_BREAK;
   usb_serial_handle_break(port);
  }
  if (lsr & UART_LSR_PE) {
   port->icount.parity++;
   if (*tty_flag == TTY_NORMAL)
    *tty_flag = TTY_PARITY;
  }
  if (lsr & UART_LSR_FE) {
   port->icount.frame++;
   if (*tty_flag == TTY_NORMAL)
    *tty_flag = TTY_FRAME;
  }
  if (lsr & UART_LSR_OE) {
   port->icount.overrun++;
   tty_insert_flip_char(&port->port, 0, TTY_OVERRUN);
  }
 }

}
