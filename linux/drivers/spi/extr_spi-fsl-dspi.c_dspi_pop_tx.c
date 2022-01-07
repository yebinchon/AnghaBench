
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_dspi {int bytes_per_word; int len; scalar_t__ tx; } ;



__attribute__((used)) static u32 dspi_pop_tx(struct fsl_dspi *dspi)
{
 u32 txdata = 0;

 if (dspi->tx) {
  if (dspi->bytes_per_word == 1)
   txdata = *(u8 *)dspi->tx;
  else if (dspi->bytes_per_word == 2)
   txdata = *(u16 *)dspi->tx;
  else
   txdata = *(u32 *)dspi->tx;
  dspi->tx += dspi->bytes_per_word;
 }
 dspi->len -= dspi->bytes_per_word;
 return txdata;
}
