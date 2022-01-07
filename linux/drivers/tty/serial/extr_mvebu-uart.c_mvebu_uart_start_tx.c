
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx; } ;
struct uart_port {scalar_t__ membase; TYPE_1__ icount; TYPE_2__* state; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 unsigned int CTRL_TX_RDY_INT (struct uart_port*) ;
 scalar_t__ IS_EXTENDED (struct uart_port*) ;
 scalar_t__ UART_INTR (struct uart_port*) ;
 scalar_t__ UART_TSH (struct uart_port*) ;
 int UART_XMIT_SIZE ;
 unsigned int readl (scalar_t__) ;
 int uart_circ_empty (struct circ_buf*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mvebu_uart_start_tx(struct uart_port *port)
{
 unsigned int ctl;
 struct circ_buf *xmit = &port->state->xmit;

 if (IS_EXTENDED(port) && !uart_circ_empty(xmit)) {
  writel(xmit->buf[xmit->tail], port->membase + UART_TSH(port));
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
 }

 ctl = readl(port->membase + UART_INTR(port));
 ctl |= CTRL_TX_RDY_INT(port);
 writel(ctl, port->membase + UART_INTR(port));
}
