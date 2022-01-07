
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spi {int dev; } ;


 int SPI_BPW_MASK (int) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int stm32f4_spi_get_bpw_mask(struct stm32_spi *spi)
{
 dev_dbg(spi->dev, "8-bit or 16-bit data frame supported\n");
 return SPI_BPW_MASK(8) | SPI_BPW_MASK(16);
}
