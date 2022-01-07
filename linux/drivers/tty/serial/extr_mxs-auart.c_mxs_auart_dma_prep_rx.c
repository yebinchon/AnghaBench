
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct mxs_auart_port {int dev; int rx_dma_buf; struct dma_chan* rx_dma_chan; struct scatterlist rx_sgl; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct mxs_auart_port* callback_param; int callback; } ;


 int AUART_CTRL0_RXTIMEOUT (int) ;
 int AUART_CTRL0_RXTO_ENABLE ;
 int AUART_CTRL0_XFER_COUNT (int ) ;
 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TRANS_NONE ;
 int EINVAL ;
 int UART_XMIT_SIZE ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;
 int dma_rx_callback ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,struct scatterlist*,int,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int sg_init_one (struct scatterlist*,int ,int ) ;

__attribute__((used)) static int mxs_auart_dma_prep_rx(struct mxs_auart_port *s)
{
 struct dma_async_tx_descriptor *desc;
 struct scatterlist *sgl = &s->rx_sgl;
 struct dma_chan *channel = s->rx_dma_chan;
 u32 pio[1];


 pio[0] = AUART_CTRL0_RXTO_ENABLE
  | AUART_CTRL0_RXTIMEOUT(0x80)
  | AUART_CTRL0_XFER_COUNT(UART_XMIT_SIZE);
 desc = dmaengine_prep_slave_sg(channel, (struct scatterlist *)pio,
     1, DMA_TRANS_NONE, 0);
 if (!desc) {
  dev_err(s->dev, "step 1 error\n");
  return -EINVAL;
 }


 sg_init_one(sgl, s->rx_dma_buf, UART_XMIT_SIZE);
 dma_map_sg(s->dev, sgl, 1, DMA_FROM_DEVICE);
 desc = dmaengine_prep_slave_sg(channel, sgl, 1, DMA_DEV_TO_MEM,
     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc) {
  dev_err(s->dev, "step 2 error\n");
  return -1;
 }


 desc->callback = dma_rx_callback;
 desc->callback_param = s;
 dmaengine_submit(desc);
 dma_async_issue_pending(channel);
 return 0;
}
