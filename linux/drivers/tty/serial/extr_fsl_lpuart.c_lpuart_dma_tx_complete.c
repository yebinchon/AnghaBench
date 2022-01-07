
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_6__ {int tx; } ;
struct TYPE_7__ {int lock; TYPE_2__ icount; int dev; TYPE_1__* state; } ;
struct lpuart_port {int dma_tx_bytes; int dma_tx_in_progress; TYPE_3__ port; int dma_wait; int dma_tx_nents; struct scatterlist* tx_sgl; } ;
struct circ_buf {int tail; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;


 int DMA_TO_DEVICE ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int dma_unmap_sg (int ,struct scatterlist*,int ,int ) ;
 int lpuart_dma_tx (struct lpuart_port*) ;
 int lpuart_stopped_or_empty (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_write_wakeup (TYPE_3__*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void lpuart_dma_tx_complete(void *arg)
{
 struct lpuart_port *sport = arg;
 struct scatterlist *sgl = &sport->tx_sgl[0];
 struct circ_buf *xmit = &sport->port.state->xmit;
 unsigned long flags;

 spin_lock_irqsave(&sport->port.lock, flags);

 dma_unmap_sg(sport->port.dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);

 xmit->tail = (xmit->tail + sport->dma_tx_bytes) & (UART_XMIT_SIZE - 1);

 sport->port.icount.tx += sport->dma_tx_bytes;
 sport->dma_tx_in_progress = 0;
 spin_unlock_irqrestore(&sport->port.lock, flags);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&sport->port);

 if (waitqueue_active(&sport->dma_wait)) {
  wake_up(&sport->dma_wait);
  return;
 }

 spin_lock_irqsave(&sport->port.lock, flags);

 if (!lpuart_stopped_or_empty(&sport->port))
  lpuart_dma_tx(sport);

 spin_unlock_irqrestore(&sport->port.lock, flags);
}
