
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sflash_data {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_sflash_writel(struct tegra_sflash_data *tsd,
  u32 val, unsigned long reg)
{
 writel(val, tsd->base + reg);
}
