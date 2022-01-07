
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct davinci_spi {scalar_t__* rx; } ;



__attribute__((used)) static void davinci_spi_rx_buf_u8(u32 data, struct davinci_spi *dspi)
{
 if (dspi->rx) {
  u8 *rx = dspi->rx;
  *rx++ = (u8)data;
  dspi->rx = rx;
 }
}
