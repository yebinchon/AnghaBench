
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct spi_master {int dummy; } ;
struct spi_device {size_t chip_select; int master; } ;
struct omap2_mcspi_dma {int dma_tx; int dma_rx; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;


 scalar_t__ DMA_MIN_BYTES ;
 scalar_t__ spi_controller_is_slave (struct spi_master*) ;
 struct omap2_mcspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static bool omap2_mcspi_can_dma(struct spi_master *master,
    struct spi_device *spi,
    struct spi_transfer *xfer)
{
 struct omap2_mcspi *mcspi = spi_master_get_devdata(spi->master);
 struct omap2_mcspi_dma *mcspi_dma =
  &mcspi->dma_channels[spi->chip_select];

 if (!mcspi_dma->dma_rx || !mcspi_dma->dma_tx)
  return 0;

 if (spi_controller_is_slave(master))
  return 1;

 return (xfer->len >= DMA_MIN_BYTES);
}
