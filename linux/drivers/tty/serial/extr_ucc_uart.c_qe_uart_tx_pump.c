
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {char x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct uart_qe_port {unsigned int tx_fifosize; struct qe_bd* tx_cur; struct qe_bd* tx_bd_base; struct qe_bd* rx_cur; struct uart_port port; } ;
struct qe_bd {int status; int length; int buf; } ;
struct circ_buf {size_t tail; size_t head; int * buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int BD_SC_READY ;
 int BD_SC_WRAP ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int in_be16 (int *) ;
 int out_be16 (int *,unsigned int) ;
 unsigned char* qe2cpu_addr (int ,struct uart_qe_port*) ;
 int qe_uart_stop_tx (struct uart_port*) ;
 int setbits16 (int *,int) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static int qe_uart_tx_pump(struct uart_qe_port *qe_port)
{
 struct qe_bd *bdp;
 unsigned char *p;
 unsigned int count;
 struct uart_port *port = &qe_port->port;
 struct circ_buf *xmit = &port->state->xmit;

 bdp = qe_port->rx_cur;


 if (port->x_char) {

  bdp = qe_port->tx_cur;

  p = qe2cpu_addr(bdp->buf, qe_port);

  *p++ = port->x_char;
  out_be16(&bdp->length, 1);
  setbits16(&bdp->status, BD_SC_READY);

  if (in_be16(&bdp->status) & BD_SC_WRAP)
   bdp = qe_port->tx_bd_base;
  else
   bdp++;
  qe_port->tx_cur = bdp;

  port->icount.tx++;
  port->x_char = 0;
  return 1;
 }

 if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
  qe_uart_stop_tx(port);
  return 0;
 }


 bdp = qe_port->tx_cur;

 while (!(in_be16(&bdp->status) & BD_SC_READY) &&
        (xmit->tail != xmit->head)) {
  count = 0;
  p = qe2cpu_addr(bdp->buf, qe_port);
  while (count < qe_port->tx_fifosize) {
   *p++ = xmit->buf[xmit->tail];
   xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
   port->icount.tx++;
   count++;
   if (xmit->head == xmit->tail)
    break;
  }

  out_be16(&bdp->length, count);
  setbits16(&bdp->status, BD_SC_READY);


  if (in_be16(&bdp->status) & BD_SC_WRAP)
   bdp = qe_port->tx_bd_base;
  else
   bdp++;
 }
 qe_port->tx_cur = bdp;

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit)) {



  qe_uart_stop_tx(port);
  return 0;
 }

 return 1;
}
