
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_sh_data {int dummy; } ;


 int ETIMEDOUT ;
 int SPI_SH_CR1 ;
 int SPI_SH_RBE ;
 int spi_sh_read (struct spi_sh_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int spi_sh_wait_receive_buffer(struct spi_sh_data *ss)
{
 int timeout = 100000;

 while (spi_sh_read(ss, SPI_SH_CR1) & SPI_SH_RBE) {
  udelay(10);
  if (timeout-- < 0)
   return -ETIMEDOUT;
 }
 return 0;
}
