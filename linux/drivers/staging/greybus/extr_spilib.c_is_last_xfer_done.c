
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct gb_spilib {scalar_t__ tx_xfer_offset; scalar_t__ last_xfer_size; scalar_t__ rx_xfer_offset; struct spi_transfer* last_xfer; } ;



__attribute__((used)) static bool is_last_xfer_done(struct gb_spilib *spi)
{
 struct spi_transfer *last_xfer = spi->last_xfer;

 if ((spi->tx_xfer_offset + spi->last_xfer_size == last_xfer->len) ||
     (spi->rx_xfer_offset + spi->last_xfer_size == last_xfer->len))
  return 1;

 return 0;
}
