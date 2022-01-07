
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {int (* write_char ) (struct uart_port*,scalar_t__) ;scalar_t__ (* raw_tx_rdy ) (struct uart_port*) ;} ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int mpc52xx_uart_stop_tx (struct uart_port*) ;
 TYPE_3__* psc_ops ;
 int stub1 (struct uart_port*,scalar_t__) ;
 scalar_t__ stub2 (struct uart_port*) ;
 int stub3 (struct uart_port*,scalar_t__) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static inline int
mpc52xx_uart_int_tx_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;


 if (port->x_char) {
  psc_ops->write_char(port, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  return 1;
 }


 if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
  mpc52xx_uart_stop_tx(port);
  return 0;
 }


 while (psc_ops->raw_tx_rdy(port)) {
  psc_ops->write_char(port, xmit->buf[xmit->tail]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 }


 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);


 if (uart_circ_empty(xmit)) {
  mpc52xx_uart_stop_tx(port);
  return 0;
 }

 return 1;
}
