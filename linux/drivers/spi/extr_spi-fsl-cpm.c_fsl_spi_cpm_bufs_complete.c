
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; } ;
struct mpc8xxx_spi {struct spi_transfer* xfer_in_progress; int rx_dma; scalar_t__ map_rx_dma; int tx_dma; scalar_t__ map_tx_dma; struct device* dev; } ;
struct device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;

void fsl_spi_cpm_bufs_complete(struct mpc8xxx_spi *mspi)
{
 struct device *dev = mspi->dev;
 struct spi_transfer *t = mspi->xfer_in_progress;

 if (mspi->map_tx_dma)
  dma_unmap_single(dev, mspi->tx_dma, t->len, DMA_TO_DEVICE);
 if (mspi->map_rx_dma)
  dma_unmap_single(dev, mspi->rx_dma, t->len, DMA_FROM_DEVICE);
 mspi->xfer_in_progress = ((void*)0);
}
