
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {int tx_dma; int rx_dma; } ;
struct spi_master {int dummy; } ;
struct mtk_spi {scalar_t__ base; TYPE_1__* dev_comp; scalar_t__ rx_sgl; scalar_t__ tx_sgl; } ;
struct TYPE_2__ {scalar_t__ dma_ext; } ;


 int MTK_SPI_32BITS_MASK ;
 scalar_t__ SPI_RX_DST_REG ;
 scalar_t__ SPI_RX_DST_REG_64 ;
 scalar_t__ SPI_TX_SRC_REG ;
 scalar_t__ SPI_TX_SRC_REG_64 ;
 struct mtk_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_spi_setup_dma_addr(struct spi_master *master,
       struct spi_transfer *xfer)
{
 struct mtk_spi *mdata = spi_master_get_devdata(master);

 if (mdata->tx_sgl) {
  writel((u32)(xfer->tx_dma & MTK_SPI_32BITS_MASK),
         mdata->base + SPI_TX_SRC_REG);





 }

 if (mdata->rx_sgl) {
  writel((u32)(xfer->rx_dma & MTK_SPI_32BITS_MASK),
         mdata->base + SPI_RX_DST_REG);





 }
}
