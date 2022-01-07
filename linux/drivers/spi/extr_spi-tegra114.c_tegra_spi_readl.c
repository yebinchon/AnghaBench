
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_spi_data {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 tegra_spi_readl(struct tegra_spi_data *tspi,
  unsigned long reg)
{
 return readl(tspi->base + reg);
}
