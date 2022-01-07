
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct uart_port {unsigned int fifosize; unsigned int read_status_mask; int lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int port; } ;


 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_PARITY ;
 unsigned int UART_DUMMY_RSR_RX ;
 unsigned int UART_GET_CHAR (struct uart_port*) ;
 unsigned int UART_GET_STATUS (struct uart_port*) ;
 int UART_PUT_STATUS (struct uart_port*,int ) ;
 scalar_t__ UART_RX_DATA (unsigned int) ;
 unsigned int UART_STATUS_BR ;
 unsigned int UART_STATUS_ERR ;
 unsigned int UART_STATUS_FE ;
 unsigned int UART_STATUS_OE ;
 unsigned int UART_STATUS_PE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned int) ;
 int uart_insert_char (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void apbuart_rx_chars(struct uart_port *port)
{
 unsigned int status, ch, rsr, flag;
 unsigned int max_chars = port->fifosize;

 status = UART_GET_STATUS(port);

 while (UART_RX_DATA(status) && (max_chars--)) {

  ch = UART_GET_CHAR(port);
  flag = TTY_NORMAL;

  port->icount.rx++;

  rsr = UART_GET_STATUS(port) | UART_DUMMY_RSR_RX;
  UART_PUT_STATUS(port, 0);
  if (rsr & UART_STATUS_ERR) {

   if (rsr & UART_STATUS_BR) {
    rsr &= ~(UART_STATUS_FE | UART_STATUS_PE);
    port->icount.brk++;
    if (uart_handle_break(port))
     goto ignore_char;
   } else if (rsr & UART_STATUS_PE) {
    port->icount.parity++;
   } else if (rsr & UART_STATUS_FE) {
    port->icount.frame++;
   }
   if (rsr & UART_STATUS_OE)
    port->icount.overrun++;

   rsr &= port->read_status_mask;

   if (rsr & UART_STATUS_PE)
    flag = TTY_PARITY;
   else if (rsr & UART_STATUS_FE)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char(port, ch))
   goto ignore_char;

  uart_insert_char(port, rsr, UART_STATUS_OE, ch, flag);


       ignore_char:
  status = UART_GET_STATUS(port);
 }

 spin_unlock(&port->lock);
 tty_flip_buffer_push(&port->state->port);
 spin_lock(&port->lock);
}
