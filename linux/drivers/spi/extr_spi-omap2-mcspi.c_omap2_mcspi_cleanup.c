
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {size_t chip_select; int cs_gpio; TYPE_1__* master; struct omap2_mcspi_cs* controller_state; } ;
struct omap2_mcspi_dma {int * dma_tx; int * dma_rx; } ;
struct omap2_mcspi_cs {int node; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;
struct TYPE_2__ {size_t num_chipselect; } ;


 int dma_release_channel (int *) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (struct omap2_mcspi_cs*) ;
 int list_del (int *) ;
 struct omap2_mcspi* spi_master_get_devdata (TYPE_1__*) ;

__attribute__((used)) static void omap2_mcspi_cleanup(struct spi_device *spi)
{
 struct omap2_mcspi *mcspi;
 struct omap2_mcspi_dma *mcspi_dma;
 struct omap2_mcspi_cs *cs;

 mcspi = spi_master_get_devdata(spi->master);

 if (spi->controller_state) {

  cs = spi->controller_state;
  list_del(&cs->node);

  kfree(cs);
 }

 if (spi->chip_select < spi->master->num_chipselect) {
  mcspi_dma = &mcspi->dma_channels[spi->chip_select];

  if (mcspi_dma->dma_rx) {
   dma_release_channel(mcspi_dma->dma_rx);
   mcspi_dma->dma_rx = ((void*)0);
  }
  if (mcspi_dma->dma_tx) {
   dma_release_channel(mcspi_dma->dma_tx);
   mcspi_dma->dma_tx = ((void*)0);
  }
 }

 if (gpio_is_valid(spi->cs_gpio))
  gpio_free(spi->cs_gpio);
}
