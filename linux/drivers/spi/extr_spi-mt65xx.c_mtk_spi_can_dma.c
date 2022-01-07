
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;


 scalar_t__ MTK_SPI_MAX_FIFO_SIZE ;

__attribute__((used)) static bool mtk_spi_can_dma(struct spi_master *master,
       struct spi_device *spi,
       struct spi_transfer *xfer)
{

 return (xfer->len > MTK_SPI_MAX_FIFO_SIZE &&
  (unsigned long)xfer->tx_buf % 4 == 0 &&
  (unsigned long)xfer->rx_buf % 4 == 0);
}
