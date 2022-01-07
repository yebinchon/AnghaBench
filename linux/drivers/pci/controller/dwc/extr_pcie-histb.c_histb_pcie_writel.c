
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct histb_pcie {scalar_t__ ctrl; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void histb_pcie_writel(struct histb_pcie *histb_pcie, u32 reg, u32 val)
{
 writel(val, histb_pcie->ctrl + reg);
}
