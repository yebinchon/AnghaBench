
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spi {int dummy; } ;


 int EINVAL ;
 unsigned int SPI_3WIRE_TX ;
 unsigned int SPI_FULL_DUPLEX ;
 unsigned int SPI_SIMPLEX_TX ;
 int STM32F4_SPI_CR1 ;
 int STM32F4_SPI_CR1_BIDIMODE ;
 int STM32F4_SPI_CR1_BIDIOE ;
 int stm32_spi_clr_bits (struct stm32_spi*,int ,int) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int) ;

__attribute__((used)) static int stm32f4_spi_set_mode(struct stm32_spi *spi, unsigned int comm_type)
{
 if (comm_type == SPI_3WIRE_TX || comm_type == SPI_SIMPLEX_TX) {
  stm32_spi_set_bits(spi, STM32F4_SPI_CR1,
     STM32F4_SPI_CR1_BIDIMODE |
     STM32F4_SPI_CR1_BIDIOE);
 } else if (comm_type == SPI_FULL_DUPLEX) {
  stm32_spi_clr_bits(spi, STM32F4_SPI_CR1,
     STM32F4_SPI_CR1_BIDIMODE |
     STM32F4_SPI_CR1_BIDIOE);
 } else {
  return -EINVAL;
 }

 return 0;
}
