
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xtfpga_spi {unsigned int regs; } ;


 int __raw_writel (int ,unsigned int) ;

__attribute__((used)) static inline void xtfpga_spi_write32(const struct xtfpga_spi *spi,
          unsigned addr, u32 val)
{
 __raw_writel(val, spi->regs + addr);
}
