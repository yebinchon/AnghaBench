
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_spi {scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_INT_EN ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sprd_spi_irq_disable(struct sprd_spi *ss)
{
 writel_relaxed(0, ss->base + SPRD_SPI_INT_EN);
}
