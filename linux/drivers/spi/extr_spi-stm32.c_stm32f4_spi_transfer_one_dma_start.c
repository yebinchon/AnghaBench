
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spi {scalar_t__ cur_comm; } ;


 scalar_t__ SPI_3WIRE_RX ;
 scalar_t__ SPI_FULL_DUPLEX ;
 scalar_t__ SPI_SIMPLEX_RX ;
 int STM32F4_SPI_CR2 ;
 int STM32F4_SPI_CR2_ERRIE ;
 int stm32_spi_enable (struct stm32_spi*) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int ) ;

__attribute__((used)) static void stm32f4_spi_transfer_one_dma_start(struct stm32_spi *spi)
{

 if (spi->cur_comm == SPI_SIMPLEX_RX || spi->cur_comm == SPI_3WIRE_RX ||
     spi->cur_comm == SPI_FULL_DUPLEX) {





  stm32_spi_set_bits(spi, STM32F4_SPI_CR2, STM32F4_SPI_CR2_ERRIE);
 }

 stm32_spi_enable(spi);
}
