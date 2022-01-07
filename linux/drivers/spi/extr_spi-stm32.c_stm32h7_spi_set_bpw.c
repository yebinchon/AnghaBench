
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {int cur_bpw; int cur_fthlv; scalar_t__ base; } ;


 scalar_t__ STM32H7_SPI_CFG1 ;
 int STM32H7_SPI_CFG1_DSIZE ;
 int STM32H7_SPI_CFG1_DSIZE_SHIFT ;
 int STM32H7_SPI_CFG1_FTHLV ;
 int STM32H7_SPI_CFG1_FTHLV_SHIFT ;
 int readl_relaxed (scalar_t__) ;
 int stm32h7_spi_prepare_fthlv (struct stm32_spi*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm32h7_spi_set_bpw(struct stm32_spi *spi)
{
 u32 bpw, fthlv;
 u32 cfg1_clrb = 0, cfg1_setb = 0;

 bpw = spi->cur_bpw - 1;

 cfg1_clrb |= STM32H7_SPI_CFG1_DSIZE;
 cfg1_setb |= (bpw << STM32H7_SPI_CFG1_DSIZE_SHIFT) &
       STM32H7_SPI_CFG1_DSIZE;

 spi->cur_fthlv = stm32h7_spi_prepare_fthlv(spi);
 fthlv = spi->cur_fthlv - 1;

 cfg1_clrb |= STM32H7_SPI_CFG1_FTHLV;
 cfg1_setb |= (fthlv << STM32H7_SPI_CFG1_FTHLV_SHIFT) &
       STM32H7_SPI_CFG1_FTHLV;

 writel_relaxed(
  (readl_relaxed(spi->base + STM32H7_SPI_CFG1) &
   ~cfg1_clrb) | cfg1_setb,
  spi->base + STM32H7_SPI_CFG1);
}
