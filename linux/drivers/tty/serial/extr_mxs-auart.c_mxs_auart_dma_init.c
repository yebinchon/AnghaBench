
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifosize; } ;
struct mxs_auart_port {TYPE_1__ port; int dev; int flags; void* tx_dma_buf; void* tx_dma_chan; void* rx_dma_buf; void* rx_dma_chan; } ;


 int EINVAL ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int MXS_AUART_DMA_ENABLED ;
 int UART_XMIT_SIZE ;
 scalar_t__ auart_dma_enabled (struct mxs_auart_port*) ;
 int dev_dbg (int ,char*) ;
 void* dma_request_slave_channel (int ,char*) ;
 void* kzalloc (int ,int) ;
 int mxs_auart_dma_exit_channel (struct mxs_auart_port*) ;

__attribute__((used)) static int mxs_auart_dma_init(struct mxs_auart_port *s)
{
 if (auart_dma_enabled(s))
  return 0;


 s->rx_dma_chan = dma_request_slave_channel(s->dev, "rx");
 if (!s->rx_dma_chan)
  goto err_out;
 s->rx_dma_buf = kzalloc(UART_XMIT_SIZE, GFP_KERNEL | GFP_DMA);
 if (!s->rx_dma_buf)
  goto err_out;


 s->tx_dma_chan = dma_request_slave_channel(s->dev, "tx");
 if (!s->tx_dma_chan)
  goto err_out;
 s->tx_dma_buf = kzalloc(UART_XMIT_SIZE, GFP_KERNEL | GFP_DMA);
 if (!s->tx_dma_buf)
  goto err_out;


 s->flags |= MXS_AUART_DMA_ENABLED;
 dev_dbg(s->dev, "enabled the DMA support.");


 s->port.fifosize = UART_XMIT_SIZE;

 return 0;

err_out:
 mxs_auart_dma_exit_channel(s);
 return -EINVAL;

}
