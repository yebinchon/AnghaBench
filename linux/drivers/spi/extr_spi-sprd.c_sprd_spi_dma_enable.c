
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_CTL2 ;
 int SPRD_SPI_DMA_EN ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sprd_spi_dma_enable(struct sprd_spi *ss, bool enable)
{
 u32 val = readl_relaxed(ss->base + SPRD_SPI_CTL2);

 if (enable)
  val |= SPRD_SPI_DMA_EN;
 else
  val &= ~SPRD_SPI_DMA_EN;

 writel_relaxed(val, ss->base + SPRD_SPI_CTL2);
}
