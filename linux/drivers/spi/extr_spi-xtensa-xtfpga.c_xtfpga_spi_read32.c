
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_spi {unsigned int regs; } ;


 unsigned int __raw_readl (unsigned int) ;

__attribute__((used)) static inline unsigned int xtfpga_spi_read32(const struct xtfpga_spi *spi,
          unsigned addr)
{
 return __raw_readl(spi->regs + addr);
}
