
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tx; } ;
struct TYPE_8__ {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct sifive_serial_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 int SIFIVE_TX_FIFO_DEPTH ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int __ssp_transmit_char (struct sifive_serial_port*,scalar_t__) ;
 int sifive_serial_stop_tx (TYPE_3__*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;

__attribute__((used)) static void __ssp_transmit_chars(struct sifive_serial_port *ssp)
{
 struct circ_buf *xmit = &ssp->port.state->xmit;
 int count;

 if (ssp->port.x_char) {
  __ssp_transmit_char(ssp, ssp->port.x_char);
  ssp->port.icount.tx++;
  ssp->port.x_char = 0;
  return;
 }
 if (uart_circ_empty(xmit) || uart_tx_stopped(&ssp->port)) {
  sifive_serial_stop_tx(&ssp->port);
  return;
 }
 count = SIFIVE_TX_FIFO_DEPTH;
 do {
  __ssp_transmit_char(ssp, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  ssp->port.icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 } while (--count > 0);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&ssp->port);

 if (uart_circ_empty(xmit))
  sifive_serial_stop_tx(&ssp->port);
}
