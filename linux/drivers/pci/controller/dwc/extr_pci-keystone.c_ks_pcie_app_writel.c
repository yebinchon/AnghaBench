
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct keystone_pcie {scalar_t__ va_app_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ks_pcie_app_writel(struct keystone_pcie *ks_pcie, u32 offset,
          u32 val)
{
 writel(val, ks_pcie->va_app_base + offset);
}
