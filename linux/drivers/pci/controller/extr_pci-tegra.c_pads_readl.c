
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie {scalar_t__ pads; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 pads_readl(struct tegra_pcie *pcie, unsigned long offset)
{
 return readl(pcie->pads + offset);
}
