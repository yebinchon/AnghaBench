
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_spi {int dummy; } ;


 int DW_SPI_IMR ;
 int dw_readl (struct dw_spi*,int ) ;
 int dw_writel (struct dw_spi*,int ,int) ;

__attribute__((used)) static inline void spi_mask_intr(struct dw_spi *dws, u32 mask)
{
 u32 new_mask;

 new_mask = dw_readl(dws, DW_SPI_IMR) & ~mask;
 dw_writel(dws, DW_SPI_IMR, new_mask);
}
