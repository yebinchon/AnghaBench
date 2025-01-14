
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct chip_data {scalar_t__ dma_burst_size; scalar_t__ enable_dma; } ;


 scalar_t__ MAX_DMA_LEN ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;

__attribute__((used)) static bool pxa2xx_spi_can_dma(struct spi_controller *controller,
          struct spi_device *spi,
          struct spi_transfer *xfer)
{
 struct chip_data *chip = spi_get_ctldata(spi);

 return chip->enable_dma &&
        xfer->len <= MAX_DMA_LEN &&
        xfer->len >= chip->dma_burst_size;
}
