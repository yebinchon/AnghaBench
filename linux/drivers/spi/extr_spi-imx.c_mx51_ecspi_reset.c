
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; } ;


 scalar_t__ MXC_CSPIRXDATA ;
 scalar_t__ mx51_ecspi_rx_available (struct spi_imx_data*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void mx51_ecspi_reset(struct spi_imx_data *spi_imx)
{

 while (mx51_ecspi_rx_available(spi_imx))
  readl(spi_imx->base + MXC_CSPIRXDATA);
}
