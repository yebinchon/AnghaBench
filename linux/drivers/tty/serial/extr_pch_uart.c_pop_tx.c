
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; TYPE_1__* state; } ;
struct eg20t_port {struct uart_port port; } ;
struct circ_buf {size_t tail; int * buf; int head; } ;
struct TYPE_2__ {struct circ_buf xmit; } ;


 int CIRC_CNT_TO_END (int ,size_t,int) ;
 int UART_XMIT_SIZE ;
 int dev_dbg (int ,char*,int,int,int ) ;
 int jiffies ;
 int min (int,int) ;
 int pch_uart_hal_write (struct eg20t_port*,int *,int) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;

__attribute__((used)) static int pop_tx(struct eg20t_port *priv, int size)
{
 int count = 0;
 struct uart_port *port = &priv->port;
 struct circ_buf *xmit = &port->state->xmit;

 if (uart_tx_stopped(port) || uart_circ_empty(xmit) || count >= size)
  goto pop_tx_end;

 do {
  int cnt_to_end =
      CIRC_CNT_TO_END(xmit->head, xmit->tail, UART_XMIT_SIZE);
  int sz = min(size - count, cnt_to_end);
  pch_uart_hal_write(priv, &xmit->buf[xmit->tail], sz);
  xmit->tail = (xmit->tail + sz) & (UART_XMIT_SIZE - 1);
  count += sz;
 } while (!uart_circ_empty(xmit) && count < size);

pop_tx_end:
 dev_dbg(priv->port.dev, "%d characters. Remained %d characters.(%lu)\n",
   count, size - count, jiffies);

 return count;
}
