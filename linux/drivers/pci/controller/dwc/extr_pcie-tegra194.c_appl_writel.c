
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_pcie_dw {scalar_t__ const appl_base; } ;


 int writel_relaxed (scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static inline void appl_writel(struct tegra_pcie_dw *pcie, const u32 value,
          const u32 reg)
{
 writel_relaxed(value, pcie->appl_base + reg);
}
