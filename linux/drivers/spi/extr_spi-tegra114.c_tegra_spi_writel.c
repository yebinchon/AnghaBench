
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_spi_data {scalar_t__ base; } ;


 scalar_t__ SPI_COMMAND1 ;
 unsigned long SPI_TX_FIFO ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_spi_writel(struct tegra_spi_data *tspi,
  u32 val, unsigned long reg)
{
 writel(val, tspi->base + reg);


 if (reg != SPI_TX_FIFO)
  readl(tspi->base + SPI_COMMAND1);
}
