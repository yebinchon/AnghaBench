
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tegra_pmx {size_t* regs; } ;


 int pmx_readl (struct tegra_pmx*,size_t,size_t) ;
 int writel_relaxed (size_t,size_t) ;

__attribute__((used)) static inline void pmx_writel(struct tegra_pmx *pmx, u32 val, u32 bank, u32 reg)
{
 writel_relaxed(val, pmx->regs[bank] + reg);

 pmx_readl(pmx, bank, reg);
}
