
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rx; int overrun; int frame; int parity; } ;
struct uart_port {int lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int port; } ;


 int RDA_UART_RXTX_BUFFER ;
 int RDA_UART_RX_FIFO_MASK ;
 int RDA_UART_RX_FRAMING_ERR ;
 int RDA_UART_RX_OVERFLOW_ERR ;
 int RDA_UART_RX_PARITY_ERR ;
 int RDA_UART_STATUS ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 int rda_uart_read (struct uart_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,int,char) ;

__attribute__((used)) static void rda_uart_receive_chars(struct uart_port *port)
{
 u32 status, val;

 status = rda_uart_read(port, RDA_UART_STATUS);
 while ((status & RDA_UART_RX_FIFO_MASK)) {
  char flag = TTY_NORMAL;

  if (status & RDA_UART_RX_PARITY_ERR) {
   port->icount.parity++;
   flag = TTY_PARITY;
  }

  if (status & RDA_UART_RX_FRAMING_ERR) {
   port->icount.frame++;
   flag = TTY_FRAME;
  }

  if (status & RDA_UART_RX_OVERFLOW_ERR) {
   port->icount.overrun++;
   flag = TTY_OVERRUN;
  }

  val = rda_uart_read(port, RDA_UART_RXTX_BUFFER);
  val &= 0xff;

  port->icount.rx++;
  tty_insert_flip_char(&port->state->port, val, flag);

  status = rda_uart_read(port, RDA_UART_STATUS);
 }

 spin_unlock(&port->lock);
 tty_flip_buffer_push(&port->state->port);
 spin_lock(&port->lock);
}
