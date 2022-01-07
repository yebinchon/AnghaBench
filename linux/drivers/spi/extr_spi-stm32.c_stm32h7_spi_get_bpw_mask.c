
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {int dev; int lock; scalar_t__ base; } ;


 int SPI_BPW_RANGE_MASK (int,int) ;
 scalar_t__ STM32H7_SPI_CFG1 ;
 int STM32H7_SPI_CFG1_DSIZE ;
 int STM32H7_SPI_CFG1_DSIZE_SHIFT ;
 int dev_dbg (int ,char*,int) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_spi_set_bits (struct stm32_spi*,scalar_t__,int) ;

__attribute__((used)) static int stm32h7_spi_get_bpw_mask(struct stm32_spi *spi)
{
 unsigned long flags;
 u32 cfg1, max_bpw;

 spin_lock_irqsave(&spi->lock, flags);





 stm32_spi_set_bits(spi, STM32H7_SPI_CFG1, STM32H7_SPI_CFG1_DSIZE);

 cfg1 = readl_relaxed(spi->base + STM32H7_SPI_CFG1);
 max_bpw = (cfg1 & STM32H7_SPI_CFG1_DSIZE) >>
    STM32H7_SPI_CFG1_DSIZE_SHIFT;
 max_bpw += 1;

 spin_unlock_irqrestore(&spi->lock, flags);

 dev_dbg(spi->dev, "%d-bit maximum data frame\n", max_bpw);

 return SPI_BPW_RANGE_MASK(4, max_bpw);
}
