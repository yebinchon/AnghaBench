
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {int dev; int lock; scalar_t__ base; } ;


 int STM32H7_SPI_CR1 ;
 int STM32H7_SPI_CR1_SPE ;
 scalar_t__ STM32H7_SPI_SR ;
 int STM32H7_SPI_SR_TXP ;
 scalar_t__ STM32H7_SPI_TXDR ;
 int dev_dbg (int ,char*,int) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_spi_clr_bits (struct stm32_spi*,int ,int ) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int ) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32h7_spi_get_fifo_size(struct stm32_spi *spi)
{
 unsigned long flags;
 u32 count = 0;

 spin_lock_irqsave(&spi->lock, flags);

 stm32_spi_set_bits(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_SPE);

 while (readl_relaxed(spi->base + STM32H7_SPI_SR) & STM32H7_SPI_SR_TXP)
  writeb_relaxed(++count, spi->base + STM32H7_SPI_TXDR);

 stm32_spi_clr_bits(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_SPE);

 spin_unlock_irqrestore(&spi->lock, flags);

 dev_dbg(spi->dev, "%d x 8-bit fifo size\n", count);

 return count;
}
