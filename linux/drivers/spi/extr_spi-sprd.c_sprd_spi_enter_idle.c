
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_CTL1 ;
 int SPRD_SPI_RTX_MD_MASK ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sprd_spi_enter_idle(struct sprd_spi *ss)
{
 u32 val = readl_relaxed(ss->base + SPRD_SPI_CTL1);

 val &= ~SPRD_SPI_RTX_MD_MASK;
 writel_relaxed(val, ss->base + SPRD_SPI_CTL1);
}
