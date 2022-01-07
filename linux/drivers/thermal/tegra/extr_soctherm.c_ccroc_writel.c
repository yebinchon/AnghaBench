
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_soctherm {scalar_t__ ccroc_regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void ccroc_writel(struct tegra_soctherm *ts, u32 value, u32 reg)
{
 writel(value, (ts->ccroc_regs + reg));
}
