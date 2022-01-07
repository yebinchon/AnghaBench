
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_sh_data {int dummy; } ;


 int SPI_SH_CR2 ;
 int SPI_SH_RSTF ;
 int spi_sh_clear_bit (struct spi_sh_data*,int ,int ) ;
 int spi_sh_set_bit (struct spi_sh_data*,int ,int ) ;

__attribute__((used)) static void clear_fifo(struct spi_sh_data *ss)
{
 spi_sh_set_bit(ss, SPI_SH_RSTF, SPI_SH_CR2);
 spi_sh_clear_bit(ss, SPI_SH_RSTF, SPI_SH_CR2);
}
