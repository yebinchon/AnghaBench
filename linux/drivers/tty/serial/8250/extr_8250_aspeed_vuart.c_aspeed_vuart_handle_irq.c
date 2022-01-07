
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; struct aspeed_vuart* private_data; int lock; } ;
struct uart_8250_port {int dummy; } ;
struct aspeed_vuart {int unthrottle_timer; struct uart_8250_port* port; } ;
struct TYPE_2__ {int port; } ;


 int UART_IIR ;
 unsigned int UART_IIR_NO_INT ;
 int UART_LSR ;
 unsigned int UART_LSR_BI ;
 unsigned int UART_LSR_DR ;
 unsigned int UART_LSR_THRE ;
 int __aspeed_vuart_set_throttle (struct uart_8250_port*,int) ;
 scalar_t__ jiffies ;
 int min (int,int) ;
 int mod_timer (int *,scalar_t__) ;
 int serial8250_modem_status (struct uart_8250_port*) ;
 int serial8250_read_char (struct uart_8250_port*,unsigned int) ;
 int serial8250_tx_chars (struct uart_8250_port*) ;
 unsigned int serial_in (struct uart_8250_port*,int ) ;
 unsigned int serial_port_in (struct uart_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int timer_pending (int *) ;
 int tty_buffer_space_avail (int *) ;
 int tty_flip_buffer_push (int *) ;
 int uart_unlock_and_check_sysrq (struct uart_port*,unsigned long) ;
 scalar_t__ unthrottle_timeout ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int aspeed_vuart_handle_irq(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned int iir, lsr;
 unsigned long flags;
 int space, count;

 iir = serial_port_in(port, UART_IIR);

 if (iir & UART_IIR_NO_INT)
  return 0;

 spin_lock_irqsave(&port->lock, flags);

 lsr = serial_port_in(port, UART_LSR);

 if (lsr & (UART_LSR_DR | UART_LSR_BI)) {
  space = tty_buffer_space_avail(&port->state->port);

  if (!space) {

   struct aspeed_vuart *vuart = port->private_data;
   __aspeed_vuart_set_throttle(up, 1);

   if (!timer_pending(&vuart->unthrottle_timer)) {
    vuart->port = up;
    mod_timer(&vuart->unthrottle_timer,
       jiffies + unthrottle_timeout);
   }

  } else {
   count = min(space, 256);

   do {
    serial8250_read_char(up, lsr);
    lsr = serial_in(up, UART_LSR);
    if (--count == 0)
     break;
   } while (lsr & (UART_LSR_DR | UART_LSR_BI));

   tty_flip_buffer_push(&port->state->port);
  }
 }

 serial8250_modem_status(up);
 if (lsr & UART_LSR_THRE)
  serial8250_tx_chars(up);

 uart_unlock_and_check_sysrq(port, flags);

 return 1;
}
