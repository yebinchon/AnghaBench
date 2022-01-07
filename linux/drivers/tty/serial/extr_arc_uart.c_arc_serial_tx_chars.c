
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {unsigned char x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned char* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int TXEMPTY ;
 int UART_GET_STATUS (struct uart_port*) ;
 int UART_SET_DATA (struct uart_port*,unsigned char) ;
 int UART_TX_IRQ_ENABLE (struct uart_port*) ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int cpu_relax () ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_circ_empty (struct circ_buf*) ;
 int uart_write_wakeup (struct uart_port*) ;
 scalar_t__ unlikely (unsigned char) ;

__attribute__((used)) static void arc_serial_tx_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 int sent = 0;
 unsigned char ch;

 if (unlikely(port->x_char)) {
  UART_SET_DATA(port, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  sent = 1;
 } else if (!uart_circ_empty(xmit)) {
  ch = xmit->buf[xmit->tail];
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  while (!(UART_GET_STATUS(port) & TXEMPTY))
   cpu_relax();
  UART_SET_DATA(port, ch);
  sent = 1;
 }





 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (sent)
  UART_TX_IRQ_ENABLE(port);
}
