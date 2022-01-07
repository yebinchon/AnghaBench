
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
struct uart_8250_port {TYPE_2__ port; struct uart_8250_dma* dma; } ;
struct uart_8250_dma {scalar_t__ tx_running; TYPE_3__* txchan; int tx_addr; TYPE_3__* rxchan; int rx_addr; int rx_buf; int rx_size; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_5__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int UART_XMIT_SIZE ;
 int dev_dbg_ratelimited (int ,char*) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int dma_release_channel (TYPE_3__*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int dmaengine_terminate_sync (TYPE_3__*) ;

void serial8250_release_dma(struct uart_8250_port *p)
{
 struct uart_8250_dma *dma = p->dma;

 if (!dma)
  return;


 dmaengine_terminate_sync(dma->rxchan);
 dma_free_coherent(dma->rxchan->device->dev, dma->rx_size, dma->rx_buf,
     dma->rx_addr);
 dma_release_channel(dma->rxchan);
 dma->rxchan = ((void*)0);


 dmaengine_terminate_sync(dma->txchan);
 dma_unmap_single(dma->txchan->device->dev, dma->tx_addr,
    UART_XMIT_SIZE, DMA_TO_DEVICE);
 dma_release_channel(dma->txchan);
 dma->txchan = ((void*)0);
 dma->tx_running = 0;

 dev_dbg_ratelimited(p->port.dev, "dma channels released\n");
}
