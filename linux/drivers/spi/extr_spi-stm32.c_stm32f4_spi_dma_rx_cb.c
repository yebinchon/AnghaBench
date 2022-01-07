
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spi {int master; } ;


 int spi_finalize_current_transfer (int ) ;
 int stm32f4_spi_disable (struct stm32_spi*) ;

__attribute__((used)) static void stm32f4_spi_dma_rx_cb(void *data)
{
 struct stm32_spi *spi = data;

 spi_finalize_current_transfer(spi->master);
 stm32f4_spi_disable(spi);
}
