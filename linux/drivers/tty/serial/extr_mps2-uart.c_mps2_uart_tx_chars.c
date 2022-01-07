
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx; } ;
struct uart_port {TYPE_1__ icount; scalar_t__ x_char; TYPE_2__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int UART_XMIT_SIZE ;
 int UARTn_DATA ;
 int UARTn_STATE ;
 int UARTn_STATE_TX_FULL ;
 scalar_t__ WAKEUP_CHARS ;
 int mps2_uart_read8 (struct uart_port*,int ) ;
 int mps2_uart_stop_tx (struct uart_port*) ;
 int mps2_uart_write8 (struct uart_port*,scalar_t__,int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void mps2_uart_tx_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;

 while (!(mps2_uart_read8(port, UARTn_STATE) & UARTn_STATE_TX_FULL)) {
  if (port->x_char) {
   mps2_uart_write8(port, port->x_char, UARTn_DATA);
   port->x_char = 0;
   port->icount.tx++;
   continue;
  }

  if (uart_circ_empty(xmit) || uart_tx_stopped(port))
   break;

  mps2_uart_write8(port, xmit->buf[xmit->tail], UARTn_DATA);
  xmit->tail = (xmit->tail + 1) % UART_XMIT_SIZE;
  port->icount.tx++;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit))
  mps2_uart_stop_tx(port);
}
