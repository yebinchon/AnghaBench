
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ tx_nbits; scalar_t__ rx_nbits; } ;
struct spi_device {int mode; } ;
struct spi_controller {int dummy; } ;
struct rspi_data {int dummy; } ;


 int SPI_LOOP ;
 scalar_t__ SPI_NBITS_SINGLE ;
 int qspi_transfer_in (struct rspi_data*,struct spi_transfer*) ;
 int qspi_transfer_out (struct rspi_data*,struct spi_transfer*) ;
 int qspi_transfer_out_in (struct rspi_data*,struct spi_transfer*) ;
 struct rspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int qspi_transfer_one(struct spi_controller *ctlr,
        struct spi_device *spi, struct spi_transfer *xfer)
{
 struct rspi_data *rspi = spi_controller_get_devdata(ctlr);

 if (spi->mode & SPI_LOOP) {
  return qspi_transfer_out_in(rspi, xfer);
 } else if (xfer->tx_nbits > SPI_NBITS_SINGLE) {

  return qspi_transfer_out(rspi, xfer);
 } else if (xfer->rx_nbits > SPI_NBITS_SINGLE) {

  return qspi_transfer_in(rspi, xfer);
 } else {

  return qspi_transfer_out_in(rspi, xfer);
 }
}
