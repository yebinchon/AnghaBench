
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a3700_spi {int buf_len; int* rx_buf; } ;


 int A3700_SPI_DATA_IN_REG ;
 int a3700_is_rfifo_empty (struct a3700_spi*) ;
 int memcpy (int*,int*,int) ;
 int spireg_read (struct a3700_spi*,int ) ;

__attribute__((used)) static int a3700_spi_fifo_read(struct a3700_spi *a3700_spi)
{
 u32 val;

 while (!a3700_is_rfifo_empty(a3700_spi) && a3700_spi->buf_len) {
  val = spireg_read(a3700_spi, A3700_SPI_DATA_IN_REG);
  if (a3700_spi->buf_len >= 4) {

   memcpy(a3700_spi->rx_buf, &val, 4);

   a3700_spi->buf_len -= 4;
   a3700_spi->rx_buf += 4;
  } else {





   while (a3700_spi->buf_len) {
    *a3700_spi->rx_buf = val & 0xff;
    val >>= 8;

    a3700_spi->buf_len--;
    a3700_spi->rx_buf++;
   }
  }
 }

 return 0;
}
