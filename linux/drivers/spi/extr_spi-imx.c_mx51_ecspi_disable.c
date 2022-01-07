
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_imx_data {scalar_t__ base; } ;


 scalar_t__ MX51_ECSPI_CTRL ;
 int MX51_ECSPI_CTRL_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mx51_ecspi_disable(struct spi_imx_data *spi_imx)
{
 u32 ctrl;

 ctrl = readl(spi_imx->base + MX51_ECSPI_CTRL);
 ctrl &= ~MX51_ECSPI_CTRL_ENABLE;
 writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
}
