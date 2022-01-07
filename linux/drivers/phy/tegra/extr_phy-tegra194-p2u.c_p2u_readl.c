
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_p2u {scalar_t__ const base; } ;


 scalar_t__ readl_relaxed (scalar_t__ const) ;

__attribute__((used)) static inline u32 p2u_readl(struct tegra_p2u *phy, const u32 reg)
{
 return readl_relaxed(phy->base + reg);
}
