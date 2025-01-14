
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spi {scalar_t__ cur_comm; int master; } ;


 scalar_t__ SPI_3WIRE_TX ;
 scalar_t__ SPI_SIMPLEX_TX ;
 int spi_finalize_current_transfer (int ) ;
 int stm32f4_spi_disable (struct stm32_spi*) ;

__attribute__((used)) static void stm32f4_spi_dma_tx_cb(void *data)
{
 struct stm32_spi *spi = data;

 if (spi->cur_comm == SPI_SIMPLEX_TX || spi->cur_comm == SPI_3WIRE_TX) {
  spi_finalize_current_transfer(spi->master);
  stm32f4_spi_disable(spi);
 }
}
