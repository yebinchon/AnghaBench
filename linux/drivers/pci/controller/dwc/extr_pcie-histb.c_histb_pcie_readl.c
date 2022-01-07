
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct histb_pcie {scalar_t__ ctrl; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 histb_pcie_readl(struct histb_pcie *histb_pcie, u32 reg)
{
 return readl(histb_pcie->ctrl + reg);
}
