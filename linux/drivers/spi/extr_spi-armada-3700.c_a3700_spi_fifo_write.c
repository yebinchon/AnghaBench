
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a3700_spi {scalar_t__ tx_buf; scalar_t__ buf_len; } ;


 int A3700_SPI_DATA_OUT_REG ;
 int a3700_is_wfifo_full (struct a3700_spi*) ;
 int spireg_write (struct a3700_spi*,int ,int ) ;

__attribute__((used)) static int a3700_spi_fifo_write(struct a3700_spi *a3700_spi)
{
 u32 val;

 while (!a3700_is_wfifo_full(a3700_spi) && a3700_spi->buf_len) {
  val = *(u32 *)a3700_spi->tx_buf;
  spireg_write(a3700_spi, A3700_SPI_DATA_OUT_REG, val);
  a3700_spi->buf_len -= 4;
  a3700_spi->tx_buf += 4;
 }

 return 0;
}
