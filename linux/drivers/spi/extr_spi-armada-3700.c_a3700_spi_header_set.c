
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a3700_spi {int* tx_buf; int buf_len; } ;


 unsigned int A3700_SPI_ADDR_CNT_BIT ;
 unsigned int A3700_SPI_ADDR_CNT_MASK ;
 int A3700_SPI_IF_ADDR_REG ;
 int A3700_SPI_IF_HDR_CNT_REG ;
 int A3700_SPI_IF_INST_REG ;
 int A3700_SPI_IF_RMODE_REG ;
 int spireg_write (struct a3700_spi*,int ,int) ;

__attribute__((used)) static void a3700_spi_header_set(struct a3700_spi *a3700_spi)
{
 unsigned int addr_cnt;
 u32 val = 0;


 spireg_write(a3700_spi, A3700_SPI_IF_INST_REG, 0);
 spireg_write(a3700_spi, A3700_SPI_IF_ADDR_REG, 0);
 spireg_write(a3700_spi, A3700_SPI_IF_RMODE_REG, 0);
 spireg_write(a3700_spi, A3700_SPI_IF_HDR_CNT_REG, 0);


 if (a3700_spi->tx_buf) {
  addr_cnt = a3700_spi->buf_len % 4;
  if (addr_cnt) {
   val = (addr_cnt & A3700_SPI_ADDR_CNT_MASK)
    << A3700_SPI_ADDR_CNT_BIT;
   spireg_write(a3700_spi, A3700_SPI_IF_HDR_CNT_REG, val);


   a3700_spi->buf_len -= addr_cnt;


   val = 0;
   while (addr_cnt--) {
    val = (val << 8) | a3700_spi->tx_buf[0];
    a3700_spi->tx_buf++;
   }
   spireg_write(a3700_spi, A3700_SPI_IF_ADDR_REG, val);
  }
 }
}
