
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cdns_pcie {scalar_t__ reg_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 cdns_pcie_readl(struct cdns_pcie *pcie, u32 reg)
{
 return readl(pcie->reg_base + reg);
}
