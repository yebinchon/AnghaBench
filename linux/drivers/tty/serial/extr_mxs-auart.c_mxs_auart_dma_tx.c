
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct mxs_auart_port {int dev; int tx_dma_buf; struct dma_chan* tx_dma_chan; struct scatterlist tx_sgl; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct mxs_auart_port* callback_param; int callback; } ;


 int AUART_CTRL1_XFER_COUNT (int) ;
 int DMA_CTRL_ACK ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int DMA_TRANS_NONE ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;
 int dma_tx_callback ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,struct scatterlist*,int,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int sg_init_one (struct scatterlist*,int ,int) ;

__attribute__((used)) static int mxs_auart_dma_tx(struct mxs_auart_port *s, int size)
{
 struct dma_async_tx_descriptor *desc;
 struct scatterlist *sgl = &s->tx_sgl;
 struct dma_chan *channel = s->tx_dma_chan;
 u32 pio;


 pio = AUART_CTRL1_XFER_COUNT(size);
 desc = dmaengine_prep_slave_sg(channel, (struct scatterlist *)&pio,
     1, DMA_TRANS_NONE, 0);
 if (!desc) {
  dev_err(s->dev, "step 1 error\n");
  return -EINVAL;
 }


 sg_init_one(sgl, s->tx_dma_buf, size);
 dma_map_sg(s->dev, sgl, 1, DMA_TO_DEVICE);
 desc = dmaengine_prep_slave_sg(channel, sgl,
   1, DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc) {
  dev_err(s->dev, "step 2 error\n");
  return -EINVAL;
 }


 desc->callback = dma_tx_callback;
 desc->callback_param = s;
 dmaengine_submit(desc);
 dma_async_issue_pending(channel);
 return 0;
}
