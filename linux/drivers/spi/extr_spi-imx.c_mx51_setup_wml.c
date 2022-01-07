
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {scalar_t__ base; scalar_t__ wml; } ;


 scalar_t__ MX51_ECSPI_DMA ;
 int MX51_ECSPI_DMA_RXDEN ;
 int MX51_ECSPI_DMA_RXTDEN ;
 int MX51_ECSPI_DMA_RXT_WML (scalar_t__) ;
 int MX51_ECSPI_DMA_RX_WML (scalar_t__) ;
 int MX51_ECSPI_DMA_TEDEN ;
 int MX51_ECSPI_DMA_TX_WML (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mx51_setup_wml(struct spi_imx_data *spi_imx)
{




 writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
  MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
  MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
  MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
  MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
}
