
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct keystone_pcie {scalar_t__ va_app_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 ks_pcie_app_readl(struct keystone_pcie *ks_pcie, u32 offset)
{
 return readl(ks_pcie->va_app_base + offset);
}
