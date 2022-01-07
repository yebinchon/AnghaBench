
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tegra_pmx {size_t* regs; } ;


 size_t readl (size_t) ;

__attribute__((used)) static inline u32 pmx_readl(struct tegra_pmx *pmx, u32 bank, u32 reg)
{
 return readl(pmx->regs[bank] + reg);
}
