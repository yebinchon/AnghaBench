
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie {scalar_t__ pads; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void pads_writel(struct tegra_pcie *pcie, u32 value,
          unsigned long offset)
{
 writel(value, pcie->pads + offset);
}
