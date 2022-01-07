
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dspi_dma {scalar_t__ chan_rx; int rx_dma_phys; scalar_t__ chan_tx; int tx_dma_phys; } ;
struct fsl_dspi {TYPE_1__* pdev; struct fsl_dspi_dma* dma; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int DSPI_DMA_BUFSIZE ;
 int dma_release_channel (scalar_t__) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;

__attribute__((used)) static void dspi_release_dma(struct fsl_dspi *dspi)
{
 struct fsl_dspi_dma *dma = dspi->dma;
 struct device *dev = &dspi->pdev->dev;

 if (!dma)
  return;

 if (dma->chan_tx) {
  dma_unmap_single(dev, dma->tx_dma_phys,
     DSPI_DMA_BUFSIZE, DMA_TO_DEVICE);
  dma_release_channel(dma->chan_tx);
 }

 if (dma->chan_rx) {
  dma_unmap_single(dev, dma->rx_dma_phys,
     DSPI_DMA_BUFSIZE, DMA_FROM_DEVICE);
  dma_release_channel(dma->chan_rx);
 }
}
