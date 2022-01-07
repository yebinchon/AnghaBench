
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {int lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct dma_chan {int dummy; } ;
struct circ_buf {int tail; } ;
struct atmel_uart_port {int hd_start_rx; int tx_done_mask; int tasklet_tx; int lock_tx; int * desc_tx; int cookie_tx; scalar_t__ tx_len; struct dma_chan* chan_tx; struct uart_port uart; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int ATMEL_US_IER ;
 int EINVAL ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int async_tx_ack (int *) ;
 int atmel_tasklet_schedule (struct atmel_uart_port*,int *) ;
 scalar_t__ atmel_uart_is_half_duplex (struct uart_port*) ;
 int atmel_uart_writel (struct uart_port*,int ,int ) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 int spin_lock_irq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_circ_empty (struct circ_buf*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void atmel_complete_tx_dma(void *arg)
{
 struct atmel_uart_port *atmel_port = arg;
 struct uart_port *port = &atmel_port->uart;
 struct circ_buf *xmit = &port->state->xmit;
 struct dma_chan *chan = atmel_port->chan_tx;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 if (chan)
  dmaengine_terminate_all(chan);
 xmit->tail += atmel_port->tx_len;
 xmit->tail &= UART_XMIT_SIZE - 1;

 port->icount.tx += atmel_port->tx_len;

 spin_lock_irq(&atmel_port->lock_tx);
 async_tx_ack(atmel_port->desc_tx);
 atmel_port->cookie_tx = -EINVAL;
 atmel_port->desc_tx = ((void*)0);
 spin_unlock_irq(&atmel_port->lock_tx);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);






 if (!uart_circ_empty(xmit))
  atmel_tasklet_schedule(atmel_port, &atmel_port->tasklet_tx);
 else if (atmel_uart_is_half_duplex(port)) {




  atmel_port->hd_start_rx = 1;
  atmel_uart_writel(port, ATMEL_US_IER,
      atmel_port->tx_done_mask);
 }

 spin_unlock_irqrestore(&port->lock, flags);
}
