
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tx; } ;
struct TYPE_8__ {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct sa1100_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 int UART_GET_UTSR1 (struct sa1100_port*) ;
 int UART_PUT_CHAR (struct sa1100_port*,scalar_t__) ;
 int UART_XMIT_SIZE ;
 int UTSR1_TNF ;
 scalar_t__ WAKEUP_CHARS ;
 int sa1100_mctrl_check (struct sa1100_port*) ;
 int sa1100_stop_tx (TYPE_3__*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;

__attribute__((used)) static void sa1100_tx_chars(struct sa1100_port *sport)
{
 struct circ_buf *xmit = &sport->port.state->xmit;

 if (sport->port.x_char) {
  UART_PUT_CHAR(sport, sport->port.x_char);
  sport->port.icount.tx++;
  sport->port.x_char = 0;
  return;
 }





 sa1100_mctrl_check(sport);

 if (uart_circ_empty(xmit) || uart_tx_stopped(&sport->port)) {
  sa1100_stop_tx(&sport->port);
  return;
 }





 while (UART_GET_UTSR1(sport) & UTSR1_TNF) {
  UART_PUT_CHAR(sport, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  sport->port.icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&sport->port);

 if (uart_circ_empty(xmit))
  sa1100_stop_tx(&sport->port);
}
