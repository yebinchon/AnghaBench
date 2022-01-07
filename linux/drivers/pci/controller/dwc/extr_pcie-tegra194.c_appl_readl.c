
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_pcie_dw {scalar_t__ const appl_base; } ;


 scalar_t__ readl_relaxed (scalar_t__ const) ;

__attribute__((used)) static inline u32 appl_readl(struct tegra_pcie_dw *pcie, const u32 reg)
{
 return readl_relaxed(pcie->appl_base + reg);
}
