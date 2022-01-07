
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct keystone_pcie {int dummy; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int CMD_STATUS ;
 int LTSSM_EN_VAL ;
 int dev_dbg (struct device*,char*) ;
 scalar_t__ dw_pcie_link_up (struct dw_pcie*) ;
 int ks_pcie_app_readl (struct keystone_pcie*,int ) ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int) ;
 struct keystone_pcie* to_keystone_pcie (struct dw_pcie*) ;

__attribute__((used)) static int ks_pcie_start_link(struct dw_pcie *pci)
{
 struct keystone_pcie *ks_pcie = to_keystone_pcie(pci);
 struct device *dev = pci->dev;
 u32 val;

 if (dw_pcie_link_up(pci)) {
  dev_dbg(dev, "link is already up\n");
  return 0;
 }


 val = ks_pcie_app_readl(ks_pcie, CMD_STATUS);
 ks_pcie_app_writel(ks_pcie, CMD_STATUS, LTSSM_EN_VAL | val);

 return 0;
}
