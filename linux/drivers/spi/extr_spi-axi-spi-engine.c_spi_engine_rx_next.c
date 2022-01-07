
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int * rx_buf; int len; } ;
struct spi_engine {int * rx_buf; int rx_length; struct spi_transfer* rx_xfer; } ;


 int spi_engine_xfer_next (struct spi_engine*,struct spi_transfer**) ;

__attribute__((used)) static void spi_engine_rx_next(struct spi_engine *spi_engine)
{
 struct spi_transfer *xfer = spi_engine->rx_xfer;

 do {
  spi_engine_xfer_next(spi_engine, &xfer);
 } while (xfer && !xfer->rx_buf);

 spi_engine->rx_xfer = xfer;
 if (xfer) {
  spi_engine->rx_length = xfer->len;
  spi_engine->rx_buf = xfer->rx_buf;
 } else {
  spi_engine->rx_buf = ((void*)0);
 }
}
