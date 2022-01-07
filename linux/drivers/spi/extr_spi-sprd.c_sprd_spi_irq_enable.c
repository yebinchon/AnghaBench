
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_INT_CLR ;
 scalar_t__ SPRD_SPI_INT_EN ;
 int SPRD_SPI_RX_END_CLR ;
 int SPRD_SPI_RX_END_INT_EN ;
 int SPRD_SPI_TX_END_CLR ;
 int SPRD_SPI_TX_END_INT_EN ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sprd_spi_irq_enable(struct sprd_spi *ss)
{
 u32 val;


 writel_relaxed(SPRD_SPI_TX_END_CLR | SPRD_SPI_RX_END_CLR,
  ss->base + SPRD_SPI_INT_CLR);

 val = readl_relaxed(ss->base + SPRD_SPI_INT_EN);
 writel_relaxed(val | SPRD_SPI_TX_END_INT_EN |
         SPRD_SPI_RX_END_INT_EN,
         ss->base + SPRD_SPI_INT_EN);
}
