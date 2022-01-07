
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc8xxx_spi {int flags; int pram; int tx_bd; int dma_dummy_tx; int dma_dummy_rx; struct device* dev; } ;
struct device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int PAGE_SIZE ;
 int SPI_CPM_MODE ;
 int SPI_MRBLR ;
 int cpm_muram_free (int ) ;
 int cpm_muram_offset (int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int fsl_spi_free_dummy_rx () ;

void fsl_spi_cpm_free(struct mpc8xxx_spi *mspi)
{
 struct device *dev = mspi->dev;

 if (!(mspi->flags & SPI_CPM_MODE))
  return;

 dma_unmap_single(dev, mspi->dma_dummy_rx, SPI_MRBLR, DMA_FROM_DEVICE);
 dma_unmap_single(dev, mspi->dma_dummy_tx, PAGE_SIZE, DMA_TO_DEVICE);
 cpm_muram_free(cpm_muram_offset(mspi->tx_bd));
 cpm_muram_free(cpm_muram_offset(mspi->pram));
 fsl_spi_free_dummy_rx();
}
