
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; } ;


 scalar_t__ MX51_ECSPI_STAT ;
 int MX51_ECSPI_STAT_RR ;
 int readl (scalar_t__) ;

__attribute__((used)) static int mx51_ecspi_rx_available(struct spi_imx_data *spi_imx)
{
 return readl(spi_imx->base + MX51_ECSPI_STAT) & MX51_ECSPI_STAT_RR;
}
