
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; } ;


 unsigned int MX21_CSPICTRL_XCH ;
 scalar_t__ MXC_CSPICTRL ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mx21_trigger(struct spi_imx_data *spi_imx)
{
 unsigned int reg;

 reg = readl(spi_imx->base + MXC_CSPICTRL);
 reg |= MX21_CSPICTRL_XCH;
 writel(reg, spi_imx->base + MXC_CSPICTRL);
}
