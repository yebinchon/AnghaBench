
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {char x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned char* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int SCSCR ;
 unsigned short SCSCR_TIE ;
 int SCxSR ;
 unsigned short SCxSR_TDxE (struct uart_port*) ;
 int SCxSR_TDxE_CLEAR (struct uart_port*) ;
 int SCxTDR ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int sci_clear_SCxSR (struct uart_port*,int ) ;
 int sci_stop_tx (struct uart_port*) ;
 int sci_txroom (struct uart_port*) ;
 unsigned short serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,unsigned char) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 unsigned int uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void sci_transmit_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 unsigned int stopped = uart_tx_stopped(port);
 unsigned short status;
 unsigned short ctrl;
 int count;

 status = serial_port_in(port, SCxSR);
 if (!(status & SCxSR_TDxE(port))) {
  ctrl = serial_port_in(port, SCSCR);
  if (uart_circ_empty(xmit))
   ctrl &= ~SCSCR_TIE;
  else
   ctrl |= SCSCR_TIE;
  serial_port_out(port, SCSCR, ctrl);
  return;
 }

 count = sci_txroom(port);

 do {
  unsigned char c;

  if (port->x_char) {
   c = port->x_char;
   port->x_char = 0;
  } else if (!uart_circ_empty(xmit) && !stopped) {
   c = xmit->buf[xmit->tail];
   xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  } else {
   break;
  }

  serial_port_out(port, SCxTDR, c);

  port->icount.tx++;
 } while (--count > 0);

 sci_clear_SCxSR(port, SCxSR_TDxE_CLEAR(port));

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);
 if (uart_circ_empty(xmit))
  sci_stop_tx(port);

}
