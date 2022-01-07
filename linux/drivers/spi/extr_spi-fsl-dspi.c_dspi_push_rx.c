
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_dspi {int bits_per_word; int bytes_per_word; scalar_t__ rx; } ;



__attribute__((used)) static void dspi_push_rx(struct fsl_dspi *dspi, u32 rxdata)
{
 if (!dspi->rx)
  return;


 rxdata &= (1 << dspi->bits_per_word) - 1;

 if (dspi->bytes_per_word == 1)
  *(u8 *)dspi->rx = rxdata;
 else if (dspi->bytes_per_word == 2)
  *(u16 *)dspi->rx = rxdata;
 else
  *(u32 *)dspi->rx = rxdata;
 dspi->rx += dspi->bytes_per_word;
}
