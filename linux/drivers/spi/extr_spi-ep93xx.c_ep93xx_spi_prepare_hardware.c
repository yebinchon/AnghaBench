
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct ep93xx_spi {scalar_t__ mmio; int clk; } ;


 scalar_t__ SSPCR1 ;
 int SSPCR1_SSE ;
 int clk_enable (int ) ;
 int readl (scalar_t__) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ep93xx_spi_prepare_hardware(struct spi_master *master)
{
 struct ep93xx_spi *espi = spi_master_get_devdata(master);
 u32 val;
 int ret;

 ret = clk_enable(espi->clk);
 if (ret)
  return ret;

 val = readl(espi->mmio + SSPCR1);
 val |= SSPCR1_SSE;
 writel(val, espi->mmio + SSPCR1);

 return 0;
}
