
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_p2u {scalar_t__ const base; } ;


 int writel_relaxed (scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static inline void p2u_writel(struct tegra_p2u *phy, const u32 value,
         const u32 reg)
{
 writel_relaxed(value, phy->base + reg);
}
