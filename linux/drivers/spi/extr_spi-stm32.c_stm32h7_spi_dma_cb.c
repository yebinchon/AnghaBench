
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {int dev; int lock; scalar_t__ base; } ;


 scalar_t__ STM32H7_SPI_SR ;
 int STM32H7_SPI_SR_EOT ;
 int dev_warn (int ,char*,int) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stm32h7_spi_dma_cb(void *data)
{
 struct stm32_spi *spi = data;
 unsigned long flags;
 u32 sr;

 spin_lock_irqsave(&spi->lock, flags);

 sr = readl_relaxed(spi->base + STM32H7_SPI_SR);

 spin_unlock_irqrestore(&spi->lock, flags);

 if (!(sr & STM32H7_SPI_SR_EOT))
  dev_warn(spi->dev, "DMA error (sr=0x%08x)\n", sr);


}
