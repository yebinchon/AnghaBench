
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; } ;


 scalar_t__ MXC_RESET ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mx21_reset(struct spi_imx_data *spi_imx)
{
 writel(1, spi_imx->base + MXC_RESET);
}
