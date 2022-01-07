
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {int base; } ;


 int readl_relaxed (int) ;
 int writel_relaxed (int,int) ;

__attribute__((used)) static inline void stm32_spi_set_bits(struct stm32_spi *spi,
          u32 offset, u32 bits)
{
 writel_relaxed(readl_relaxed(spi->base + offset) | bits,
         spi->base + offset);
}
