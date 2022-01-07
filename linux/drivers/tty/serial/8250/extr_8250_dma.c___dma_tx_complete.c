
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int tx; } ;
struct TYPE_10__ {int lock; TYPE_4__ icount; TYPE_1__* state; } ;
struct uart_8250_port {TYPE_5__ port; struct uart_8250_dma* dma; } ;
struct uart_8250_dma {scalar_t__ tx_size; scalar_t__ tx_running; int tx_addr; TYPE_3__* txchan; } ;
struct circ_buf {int tail; } ;
struct TYPE_8__ {TYPE_2__* device; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 int DMA_TO_DEVICE ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int serial8250_set_THRI (struct uart_8250_port*) ;
 int serial8250_tx_dma (struct uart_8250_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_write_wakeup (TYPE_5__*) ;

__attribute__((used)) static void __dma_tx_complete(void *param)
{
 struct uart_8250_port *p = param;
 struct uart_8250_dma *dma = p->dma;
 struct circ_buf *xmit = &p->port.state->xmit;
 unsigned long flags;
 int ret;

 dma_sync_single_for_cpu(dma->txchan->device->dev, dma->tx_addr,
    UART_XMIT_SIZE, DMA_TO_DEVICE);

 spin_lock_irqsave(&p->port.lock, flags);

 dma->tx_running = 0;

 xmit->tail += dma->tx_size;
 xmit->tail &= UART_XMIT_SIZE - 1;
 p->port.icount.tx += dma->tx_size;

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&p->port);

 ret = serial8250_tx_dma(p);
 if (ret)
  serial8250_set_THRI(p);

 spin_unlock_irqrestore(&p->port.lock, flags);
}
