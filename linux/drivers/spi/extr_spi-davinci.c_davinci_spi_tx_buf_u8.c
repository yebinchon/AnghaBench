
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u32 ;
struct davinci_spi {int const* tx; } ;



__attribute__((used)) static u32 davinci_spi_tx_buf_u8(struct davinci_spi *dspi)
{
 u32 data = 0;

 if (dspi->tx) {
  const u8 *tx = dspi->tx;

  data = *tx++;
  dspi->tx = tx;
 }
 return data;
}
