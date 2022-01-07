
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int * tx_buf; int len; } ;
struct spi_engine {int * tx_buf; int tx_length; struct spi_transfer* tx_xfer; } ;


 int spi_engine_xfer_next (struct spi_engine*,struct spi_transfer**) ;

__attribute__((used)) static void spi_engine_tx_next(struct spi_engine *spi_engine)
{
 struct spi_transfer *xfer = spi_engine->tx_xfer;

 do {
  spi_engine_xfer_next(spi_engine, &xfer);
 } while (xfer && !xfer->tx_buf);

 spi_engine->tx_xfer = xfer;
 if (xfer) {
  spi_engine->tx_length = xfer->len;
  spi_engine->tx_buf = xfer->tx_buf;
 } else {
  spi_engine->tx_buf = ((void*)0);
 }
}
