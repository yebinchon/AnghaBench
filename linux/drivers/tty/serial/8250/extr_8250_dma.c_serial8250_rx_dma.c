
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {struct uart_8250_dma* dma; } ;
struct uart_8250_dma {int rx_running; int rxchan; int rx_cookie; int rx_size; int rx_addr; } ;
struct dma_async_tx_descriptor {struct uart_8250_port* callback_param; int callback; } ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_PREP_INTERRUPT ;
 int EBUSY ;
 int __dma_rx_complete ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_single (int ,int ,int ,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;

int serial8250_rx_dma(struct uart_8250_port *p)
{
 struct uart_8250_dma *dma = p->dma;
 struct dma_async_tx_descriptor *desc;

 if (dma->rx_running)
  return 0;

 desc = dmaengine_prep_slave_single(dma->rxchan, dma->rx_addr,
        dma->rx_size, DMA_DEV_TO_MEM,
        DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc)
  return -EBUSY;

 dma->rx_running = 1;
 desc->callback = __dma_rx_complete;
 desc->callback_param = p;

 dma->rx_cookie = dmaengine_submit(desc);

 dma_async_issue_pending(dma->rxchan);

 return 0;
}
