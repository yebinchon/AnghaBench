
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tx; } ;
struct TYPE_8__ {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct pnx8xxx_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 int PNX8XXX_FIFO ;
 int PNX8XXX_UART_FIFO_TXFIFO ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int pnx8xxx_mctrl_check (struct pnx8xxx_port*) ;
 int pnx8xxx_stop_tx (TYPE_3__*) ;
 int serial_in (struct pnx8xxx_port*,int ) ;
 int serial_out (struct pnx8xxx_port*,int ,scalar_t__) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;

__attribute__((used)) static void pnx8xxx_tx_chars(struct pnx8xxx_port *sport)
{
 struct circ_buf *xmit = &sport->port.state->xmit;

 if (sport->port.x_char) {
  serial_out(sport, PNX8XXX_FIFO, sport->port.x_char);
  sport->port.icount.tx++;
  sport->port.x_char = 0;
  return;
 }





 pnx8xxx_mctrl_check(sport);

 if (uart_circ_empty(xmit) || uart_tx_stopped(&sport->port)) {
  pnx8xxx_stop_tx(&sport->port);
  return;
 }




 while (((serial_in(sport, PNX8XXX_FIFO) &
     PNX8XXX_UART_FIFO_TXFIFO) >> 16) < 16) {
  serial_out(sport, PNX8XXX_FIFO, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  sport->port.icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&sport->port);

 if (uart_circ_empty(xmit))
  pnx8xxx_stop_tx(&sport->port);
}
