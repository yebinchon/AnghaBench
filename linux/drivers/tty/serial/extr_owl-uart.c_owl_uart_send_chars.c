
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {unsigned int x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int OWL_UART_STAT ;
 int OWL_UART_STAT_TFFU ;
 int OWL_UART_TXDAT ;
 int SERIAL_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int cpu_relax () ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_stop_tx (struct uart_port*) ;
 int owl_uart_write (struct uart_port*,unsigned int,int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void owl_uart_send_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 unsigned int ch;

 if (uart_tx_stopped(port))
  return;

 if (port->x_char) {
  while (!(owl_uart_read(port, OWL_UART_STAT) & OWL_UART_STAT_TFFU))
   cpu_relax();
  owl_uart_write(port, port->x_char, OWL_UART_TXDAT);
  port->icount.tx++;
  port->x_char = 0;
 }

 while (!(owl_uart_read(port, OWL_UART_STAT) & OWL_UART_STAT_TFFU)) {
  if (uart_circ_empty(xmit))
   break;

  ch = xmit->buf[xmit->tail];
  owl_uart_write(port, ch, OWL_UART_TXDAT);
  xmit->tail = (xmit->tail + 1) & (SERIAL_XMIT_SIZE - 1);
  port->icount.tx++;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit))
  owl_uart_stop_tx(port);
}
