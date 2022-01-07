
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct keystone_pcie {int dummy; } ;


 int CMD_STATUS ;
 int DBI_CS2 ;
 int ks_pcie_app_readl (struct keystone_pcie*,int ) ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int) ;

__attribute__((used)) static void ks_pcie_set_dbi_mode(struct keystone_pcie *ks_pcie)
{
 u32 val;

 val = ks_pcie_app_readl(ks_pcie, CMD_STATUS);
 val |= DBI_CS2;
 ks_pcie_app_writel(ks_pcie, CMD_STATUS, val);

 do {
  val = ks_pcie_app_readl(ks_pcie, CMD_STATUS);
 } while (!(val & DBI_CS2));
}
