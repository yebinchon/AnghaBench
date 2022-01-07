
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; } ;


 scalar_t__ MX31_CSPISTATUS ;
 int MX31_STATUS_RR ;
 scalar_t__ MXC_CSPIRXDATA ;
 int readl (scalar_t__) ;

__attribute__((used)) static void mx31_reset(struct spi_imx_data *spi_imx)
{

 while (readl(spi_imx->base + MX31_CSPISTATUS) & MX31_STATUS_RR)
  readl(spi_imx->base + MXC_CSPIRXDATA);
}
