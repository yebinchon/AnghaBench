
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_master {int dma_tx; int dma_rx; } ;
struct TYPE_4__ {int ch; } ;
struct TYPE_3__ {int ch; } ;
struct s3c64xx_spi_driver_data {TYPE_2__ tx_dma; TYPE_1__ rx_dma; } ;


 scalar_t__ is_polling (struct s3c64xx_spi_driver_data*) ;
 struct s3c64xx_spi_driver_data* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int s3c64xx_spi_prepare_transfer(struct spi_master *spi)
{
 struct s3c64xx_spi_driver_data *sdd = spi_master_get_devdata(spi);

 if (is_polling(sdd))
  return 0;

 spi->dma_rx = sdd->rx_dma.ch;
 spi->dma_tx = sdd->tx_dma.ch;

 return 0;
}
