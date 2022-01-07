
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spi {int lock; } ;


 int STM32H7_SPI_CFG2 ;
 int STM32H7_SPI_CFG2_AFCNTR ;
 int STM32H7_SPI_CFG2_MASTER ;
 int STM32H7_SPI_CFG2_SSM ;
 int STM32H7_SPI_CR1 ;
 int STM32H7_SPI_CR1_HDDIR ;
 int STM32H7_SPI_CR1_MASRX ;
 int STM32H7_SPI_CR1_SSI ;
 int STM32H7_SPI_I2SCFGR ;
 int STM32H7_SPI_I2SCFGR_I2SMOD ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_spi_clr_bits (struct stm32_spi*,int ,int ) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int) ;

__attribute__((used)) static int stm32h7_spi_config(struct stm32_spi *spi)
{
 unsigned long flags;

 spin_lock_irqsave(&spi->lock, flags);


 stm32_spi_clr_bits(spi, STM32H7_SPI_I2SCFGR,
      STM32H7_SPI_I2SCFGR_I2SMOD);






 stm32_spi_set_bits(spi, STM32H7_SPI_CR1, STM32H7_SPI_CR1_SSI |
       STM32H7_SPI_CR1_HDDIR |
       STM32H7_SPI_CR1_MASRX);







 stm32_spi_set_bits(spi, STM32H7_SPI_CFG2, STM32H7_SPI_CFG2_MASTER |
        STM32H7_SPI_CFG2_SSM |
        STM32H7_SPI_CFG2_AFCNTR);

 spin_unlock_irqrestore(&spi->lock, flags);

 return 0;
}
