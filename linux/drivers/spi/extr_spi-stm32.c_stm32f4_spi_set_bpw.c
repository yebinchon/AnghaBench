
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spi {int cur_bpw; } ;


 int STM32F4_SPI_CR1 ;
 int STM32F4_SPI_CR1_DFF ;
 int stm32_spi_clr_bits (struct stm32_spi*,int ,int ) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int ) ;

__attribute__((used)) static void stm32f4_spi_set_bpw(struct stm32_spi *spi)
{
 if (spi->cur_bpw == 16)
  stm32_spi_set_bits(spi, STM32F4_SPI_CR1, STM32F4_SPI_CR1_DFF);
 else
  stm32_spi_clr_bits(spi, STM32F4_SPI_CR1, STM32F4_SPI_CR1_DFF);
}
