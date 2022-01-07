
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;


 int a3700_spi_transfer_one_fifo (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 int a3700_spi_transfer_one_full_duplex (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 int a3700_spi_transfer_setup (struct spi_device*,struct spi_transfer*) ;

__attribute__((used)) static int a3700_spi_transfer_one(struct spi_master *master,
      struct spi_device *spi,
      struct spi_transfer *xfer)
{
 a3700_spi_transfer_setup(spi, xfer);

 if (xfer->tx_buf && xfer->rx_buf)
  return a3700_spi_transfer_one_full_duplex(master, spi, xfer);

 return a3700_spi_transfer_one_fifo(master, spi, xfer);
}
