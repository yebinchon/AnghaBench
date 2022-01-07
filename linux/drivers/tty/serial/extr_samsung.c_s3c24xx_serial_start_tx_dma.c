
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int dev; TYPE_1__* state; } ;
struct s3c24xx_uart_port {scalar_t__ tx_mode; scalar_t__ tx_in_progress; struct uart_port port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {unsigned int tx_size; unsigned int tx_bytes_requested; int tx_chan; TYPE_2__* tx_desc; int tx_cookie; scalar_t__ tx_transfer_addr; scalar_t__ tx_addr; } ;
struct circ_buf {scalar_t__ tail; } ;
struct TYPE_5__ {struct s3c24xx_uart_port* callback_param; int callback; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int EIO ;
 scalar_t__ S3C24XX_TX_DMA ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 int dma_get_cache_alignment () ;
 int dma_sync_single_for_device (int ,scalar_t__,unsigned int,int ) ;
 TYPE_2__* dmaengine_prep_slave_single (int ,scalar_t__,unsigned int,int ,int ) ;
 int dmaengine_submit (TYPE_2__*) ;
 int enable_tx_dma (struct s3c24xx_uart_port*) ;
 int s3c24xx_serial_tx_dma_complete ;

__attribute__((used)) static int s3c24xx_serial_start_tx_dma(struct s3c24xx_uart_port *ourport,
          unsigned int count)
{
 struct uart_port *port = &ourport->port;
 struct circ_buf *xmit = &port->state->xmit;
 struct s3c24xx_uart_dma *dma = ourport->dma;


 if (ourport->tx_mode != S3C24XX_TX_DMA)
  enable_tx_dma(ourport);

 dma->tx_size = count & ~(dma_get_cache_alignment() - 1);
 dma->tx_transfer_addr = dma->tx_addr + xmit->tail;

 dma_sync_single_for_device(ourport->port.dev, dma->tx_transfer_addr,
    dma->tx_size, DMA_TO_DEVICE);

 dma->tx_desc = dmaengine_prep_slave_single(dma->tx_chan,
    dma->tx_transfer_addr, dma->tx_size,
    DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
 if (!dma->tx_desc) {
  dev_err(ourport->port.dev, "Unable to get desc for Tx\n");
  return -EIO;
 }

 dma->tx_desc->callback = s3c24xx_serial_tx_dma_complete;
 dma->tx_desc->callback_param = ourport;
 dma->tx_bytes_requested = dma->tx_size;

 ourport->tx_in_progress = S3C24XX_TX_DMA;
 dma->tx_cookie = dmaengine_submit(dma->tx_desc);
 dma_async_issue_pending(dma->tx_chan);
 return 0;
}
