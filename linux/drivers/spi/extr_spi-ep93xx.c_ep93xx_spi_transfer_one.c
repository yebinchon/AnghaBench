
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {scalar_t__ len; } ;
struct spi_master {TYPE_1__* cur_msg; int dev; } ;
struct spi_device {int dummy; } ;
struct ep93xx_spi {scalar_t__ mmio; scalar_t__ dma_rx; scalar_t__ tx; scalar_t__ rx; } ;
struct TYPE_2__ {struct spi_transfer* state; } ;


 scalar_t__ SPI_FIFO_SIZE ;
 scalar_t__ SSPCR1 ;
 int SSPCR1_RIE ;
 int SSPCR1_RORIE ;
 int SSPCR1_TIE ;
 int dev_err (int *,char*) ;
 int ep93xx_spi_chip_setup (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 int ep93xx_spi_dma_transfer (struct spi_master*) ;
 int ep93xx_spi_read_write (struct spi_master*) ;
 int readl (scalar_t__) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ep93xx_spi_transfer_one(struct spi_master *master,
       struct spi_device *spi,
       struct spi_transfer *xfer)
{
 struct ep93xx_spi *espi = spi_master_get_devdata(master);
 u32 val;
 int ret;

 ret = ep93xx_spi_chip_setup(master, spi, xfer);
 if (ret) {
  dev_err(&master->dev, "failed to setup chip for transfer\n");
  return ret;
 }

 master->cur_msg->state = xfer;
 espi->rx = 0;
 espi->tx = 0;






 if (espi->dma_rx && xfer->len > SPI_FIFO_SIZE)
  return ep93xx_spi_dma_transfer(master);


 ep93xx_spi_read_write(master);

 val = readl(espi->mmio + SSPCR1);
 val |= (SSPCR1_RORIE | SSPCR1_TIE | SSPCR1_RIE);
 writel(val, espi->mmio + SSPCR1);


 return 1;
}
