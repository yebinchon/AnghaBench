
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {scalar_t__ cur_comm; int lock; scalar_t__ tx_buf; } ;


 int EINVAL ;
 scalar_t__ SPI_3WIRE_TX ;
 scalar_t__ SPI_FULL_DUPLEX ;
 scalar_t__ SPI_SIMPLEX_TX ;
 int STM32F4_SPI_CR2 ;
 int STM32F4_SPI_CR2_ERRIE ;
 int STM32F4_SPI_CR2_RXNEIE ;
 int STM32F4_SPI_CR2_TXEIE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_spi_enable (struct stm32_spi*) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int) ;
 int stm32f4_spi_write_tx (struct stm32_spi*) ;

__attribute__((used)) static int stm32f4_spi_transfer_one_irq(struct stm32_spi *spi)
{
 unsigned long flags;
 u32 cr2 = 0;


 if (spi->cur_comm == SPI_SIMPLEX_TX || spi->cur_comm == SPI_3WIRE_TX) {
  cr2 |= STM32F4_SPI_CR2_TXEIE;
 } else if (spi->cur_comm == SPI_FULL_DUPLEX) {




  cr2 |= STM32F4_SPI_CR2_RXNEIE | STM32F4_SPI_CR2_ERRIE;
 } else {
  return -EINVAL;
 }

 spin_lock_irqsave(&spi->lock, flags);

 stm32_spi_set_bits(spi, STM32F4_SPI_CR2, cr2);

 stm32_spi_enable(spi);


 if (spi->tx_buf)
  stm32f4_spi_write_tx(spi);

 spin_unlock_irqrestore(&spi->lock, flags);

 return 1;
}
