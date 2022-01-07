
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {int line; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct sbd_port {struct uart_port port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 unsigned int M_DUART_IMR_TX ;
 int R_DUART_IMRREG (int) ;
 int R_DUART_TX_HOLD ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 unsigned int read_sbdshr (struct sbd_port*,int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int write_sbdchn (struct sbd_port*,int ,scalar_t__) ;
 int write_sbdshr (struct sbd_port*,int ,unsigned int) ;

__attribute__((used)) static void sbd_transmit_chars(struct sbd_port *sport)
{
 struct uart_port *uport = &sport->port;
 struct circ_buf *xmit = &sport->port.state->xmit;
 unsigned int mask;
 int stop_tx;


 if (sport->port.x_char) {
  write_sbdchn(sport, R_DUART_TX_HOLD, sport->port.x_char);
  sport->port.icount.tx++;
  sport->port.x_char = 0;
  return;
 }


 stop_tx = (uart_circ_empty(xmit) || uart_tx_stopped(&sport->port));


 if (!stop_tx) {
  write_sbdchn(sport, R_DUART_TX_HOLD, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  sport->port.icount.tx++;

  if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
   uart_write_wakeup(&sport->port);
 }


 if (stop_tx || uart_circ_empty(xmit)) {

  mask = read_sbdshr(sport, R_DUART_IMRREG((uport->line) % 2));
  mask &= ~M_DUART_IMR_TX;
  write_sbdshr(sport, R_DUART_IMRREG((uport->line) % 2), mask);
 }
}
