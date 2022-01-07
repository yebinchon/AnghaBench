
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_soctherm {scalar_t__ ccroc_regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 ccroc_readl(struct tegra_soctherm *ts, u32 reg)
{
 return readl(ts->ccroc_regs + reg);
}
