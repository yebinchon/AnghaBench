
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {int lock; scalar_t__ base; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;


 int STM32H7_SPI_CR1 ;
 int STM32H7_SPI_CR1_CSTART ;
 scalar_t__ STM32H7_SPI_IER ;
 int STM32H7_SPI_IER_DXPIE ;
 int STM32H7_SPI_IER_EOTIE ;
 int STM32H7_SPI_IER_MODFIE ;
 int STM32H7_SPI_IER_OVRIE ;
 int STM32H7_SPI_IER_RXPIE ;
 int STM32H7_SPI_IER_TXPIE ;
 int STM32H7_SPI_IER_TXTFIE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_spi_enable (struct stm32_spi*) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int ) ;
 int stm32h7_spi_write_txfifo (struct stm32_spi*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32h7_spi_transfer_one_irq(struct stm32_spi *spi)
{
 unsigned long flags;
 u32 ier = 0;


 if (spi->tx_buf && spi->rx_buf)
  ier |= STM32H7_SPI_IER_DXPIE;
 else if (spi->tx_buf)
  ier |= STM32H7_SPI_IER_TXPIE;
 else if (spi->rx_buf)
  ier |= STM32H7_SPI_IER_RXPIE;


 ier |= STM32H7_SPI_IER_EOTIE | STM32H7_SPI_IER_TXTFIE |
        STM32H7_SPI_IER_OVRIE | STM32H7_SPI_IER_MODFIE;

 spin_lock_irqsave(&spi->lock, flags);

 stm32_spi_enable(spi);


 if (spi->tx_buf)
  stm32h7_spi_write_txfifo(spi);

 stm32_spi_set_bits(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_CSTART);

 writel_relaxed(ier, spi->base + STM32H7_SPI_IER);

 spin_unlock_irqrestore(&spi->lock, flags);

 return 1;
}
