
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int len; scalar_t__ rx_buf; int rx_dma; int tx_dma; scalar_t__ tx_buf; } ;
struct spi_controller {int dev; } ;
struct mtk_spi_slave {int xfer_done; struct spi_transfer* cur_transfer; scalar_t__ base; int dev; } ;
typedef int irqreturn_t ;


 int CMD_INVALID_ST ;
 int DATA_DONE_ST ;
 int DMA_DONE_ST ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RSTA_DONE_ST ;
 scalar_t__ SPIS_IRQ_CLR_REG ;
 scalar_t__ SPIS_IRQ_ST_REG ;
 scalar_t__ SPIS_RX_DATA_REG ;
 int SPIS_SOFT_RST ;
 scalar_t__ SPIS_SOFT_RST_REG ;
 int complete (int *) ;
 int dev_warn (int *,char*) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int ioread32_rep (scalar_t__,scalar_t__,int) ;
 int memcpy (scalar_t__,int*,int) ;
 int mtk_spi_slave_disable_dma (struct mtk_spi_slave*) ;
 int mtk_spi_slave_disable_xfer (struct mtk_spi_slave*) ;
 int readl (scalar_t__) ;
 struct mtk_spi_slave* spi_controller_get_devdata (struct spi_controller*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mtk_spi_slave_interrupt(int irq, void *dev_id)
{
 struct spi_controller *ctlr = dev_id;
 struct mtk_spi_slave *mdata = spi_controller_get_devdata(ctlr);
 struct spi_transfer *trans = mdata->cur_transfer;
 u32 int_status, reg_val, cnt, remainder;

 int_status = readl(mdata->base + SPIS_IRQ_ST_REG);
 writel(int_status, mdata->base + SPIS_IRQ_CLR_REG);

 if (!trans)
  return IRQ_NONE;

 if ((int_status & DMA_DONE_ST) &&
     ((int_status & DATA_DONE_ST) ||
     (int_status & RSTA_DONE_ST))) {
  writel(SPIS_SOFT_RST, mdata->base + SPIS_SOFT_RST_REG);

  if (trans->tx_buf)
   dma_unmap_single(mdata->dev, trans->tx_dma,
      trans->len, DMA_TO_DEVICE);
  if (trans->rx_buf)
   dma_unmap_single(mdata->dev, trans->rx_dma,
      trans->len, DMA_FROM_DEVICE);

  mtk_spi_slave_disable_dma(mdata);
  mtk_spi_slave_disable_xfer(mdata);
 }

 if ((!(int_status & DMA_DONE_ST)) &&
     ((int_status & DATA_DONE_ST) ||
     (int_status & RSTA_DONE_ST))) {
  cnt = trans->len / 4;
  if (trans->rx_buf)
   ioread32_rep(mdata->base + SPIS_RX_DATA_REG,
         trans->rx_buf, cnt);
  remainder = trans->len % 4;
  if (trans->rx_buf && remainder > 0) {
   reg_val = readl(mdata->base + SPIS_RX_DATA_REG);
   memcpy(trans->rx_buf + (cnt * 4),
          &reg_val, remainder);
  }

  mtk_spi_slave_disable_xfer(mdata);
 }

 if (int_status & CMD_INVALID_ST) {
  dev_warn(&ctlr->dev, "cmd invalid\n");
  return IRQ_NONE;
 }

 mdata->cur_transfer = ((void*)0);
 complete(&mdata->xfer_done);

 return IRQ_HANDLED;
}
