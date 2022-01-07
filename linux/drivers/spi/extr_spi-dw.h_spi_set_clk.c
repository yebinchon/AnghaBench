
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dw_spi {int dummy; } ;


 int DW_SPI_BAUDR ;
 int dw_writel (struct dw_spi*,int ,int ) ;

__attribute__((used)) static inline void spi_set_clk(struct dw_spi *dws, u16 div)
{
 dw_writel(dws, DW_SPI_BAUDR, div);
}
