
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx; int frame; int overrun; } ;
struct uart_port {int lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int port; } ;


 unsigned int RXEMPTY ;
 unsigned int RXFERR ;
 unsigned int RXOERR ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_OVERRUN ;
 int UART_CLR_STATUS (struct uart_port*,unsigned int) ;
 unsigned int UART_GET_DATA (struct uart_port*) ;
 unsigned int UART_GET_STATUS (struct uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 int uart_handle_sysrq_char (struct uart_port*,unsigned int) ;
 int uart_insert_char (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void arc_serial_rx_chars(struct uart_port *port, unsigned int status)
{
 unsigned int ch, flg = 0;
 do {




  if (unlikely(status & (RXOERR | RXFERR))) {
   if (status & RXOERR) {
    port->icount.overrun++;
    flg = TTY_OVERRUN;
    UART_CLR_STATUS(port, RXOERR);
   }

   if (status & RXFERR) {
    port->icount.frame++;
    flg = TTY_FRAME;
    UART_CLR_STATUS(port, RXFERR);
   }
  } else
   flg = TTY_NORMAL;

  if (status & RXEMPTY)
   continue;

  ch = UART_GET_DATA(port);
  port->icount.rx++;

  if (!(uart_handle_sysrq_char(port, ch)))
   uart_insert_char(port, status, RXOERR, ch, flg);

  spin_unlock(&port->lock);
  tty_flip_buffer_push(&port->state->port);
  spin_lock(&port->lock);
 } while (!((status = UART_GET_STATUS(port)) & RXEMPTY));
}
