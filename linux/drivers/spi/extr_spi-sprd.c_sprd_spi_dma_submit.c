
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int sgl; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int dma_cookie_t ;


 int ENODEV ;
 int SPRD_DMA_CHN_MODE_NONE ;
 unsigned long SPRD_DMA_FLAGS (int ,int ,int ,int ) ;
 int SPRD_DMA_FRAG_REQ ;
 int SPRD_DMA_NO_TRG ;
 int SPRD_DMA_TRANS_INT ;
 int dma_async_issue_pending (struct dma_chan*) ;
 int dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,int ,int ,int,unsigned long) ;
 int dmaengine_slave_config (struct dma_chan*,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static int sprd_spi_dma_submit(struct dma_chan *dma_chan,
          struct dma_slave_config *c,
          struct sg_table *sg,
          enum dma_transfer_direction dir)
{
 struct dma_async_tx_descriptor *desc;
 dma_cookie_t cookie;
 unsigned long flags;
 int ret;

 ret = dmaengine_slave_config(dma_chan, c);
 if (ret < 0)
  return ret;

 flags = SPRD_DMA_FLAGS(SPRD_DMA_CHN_MODE_NONE, SPRD_DMA_NO_TRG,
          SPRD_DMA_FRAG_REQ, SPRD_DMA_TRANS_INT);
 desc = dmaengine_prep_slave_sg(dma_chan, sg->sgl, sg->nents, dir, flags);
 if (!desc)
  return -ENODEV;

 cookie = dmaengine_submit(desc);
 if (dma_submit_error(cookie))
  return dma_submit_error(cookie);

 dma_async_issue_pending(dma_chan);

 return 0;
}
