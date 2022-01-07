
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_spi {int dummy; } ;


 int DW_SPI_SSIENR ;
 int dw_writel (struct dw_spi*,int ,int) ;

__attribute__((used)) static inline void spi_enable_chip(struct dw_spi *dws, int enable)
{
 dw_writel(dws, DW_SPI_SSIENR, (enable ? 1 : 0));
}
