
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int master; } ;
struct mtk_spi_slave {scalar_t__ base; } ;


 int CMD_INVALID_EN ;
 int CMD_INVALID_MASK ;
 int DATA_DONE_EN ;
 int DATA_DONE_MASK ;
 int DMA_DONE_EN ;
 int DMA_DONE_MASK ;
 int RSTA_DONE_EN ;
 int RSTA_DONE_MASK ;
 scalar_t__ SPIS_IRQ_EN_REG ;
 scalar_t__ SPIS_IRQ_MASK_REG ;
 int mtk_spi_slave_disable_dma (struct mtk_spi_slave*) ;
 int mtk_spi_slave_disable_xfer (struct mtk_spi_slave*) ;
 struct mtk_spi_slave* spi_controller_get_devdata (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtk_spi_slave_setup(struct spi_device *spi)
{
 struct mtk_spi_slave *mdata = spi_controller_get_devdata(spi->master);
 u32 reg_val;

 reg_val = DMA_DONE_EN | DATA_DONE_EN |
    RSTA_DONE_EN | CMD_INVALID_EN;
 writel(reg_val, mdata->base + SPIS_IRQ_EN_REG);

 reg_val = DMA_DONE_MASK | DATA_DONE_MASK |
    RSTA_DONE_MASK | CMD_INVALID_MASK;
 writel(reg_val, mdata->base + SPIS_IRQ_MASK_REG);

 mtk_spi_slave_disable_dma(mdata);
 mtk_spi_slave_disable_xfer(mdata);

 return 0;
}
