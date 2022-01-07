
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;


 scalar_t__ BCM2835_SPI_DMA_MIN_LENGTH ;

__attribute__((used)) static bool bcm2835_spi_can_dma(struct spi_controller *ctlr,
    struct spi_device *spi,
    struct spi_transfer *tfr)
{

 if (tfr->len < BCM2835_SPI_DMA_MIN_LENGTH)
  return 0;


 return 1;
}
