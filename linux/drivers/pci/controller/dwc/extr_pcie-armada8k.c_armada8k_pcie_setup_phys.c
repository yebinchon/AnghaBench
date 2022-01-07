
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_pcie {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct armada8k_pcie {int phy_count; int ** phy; struct dw_pcie* pci; } ;


 int ARMADA8K_PCIE_MAX_LANES ;
 int ENODEV ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int armada8k_pcie_enable_phys (struct armada8k_pcie*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;
 int * devm_of_phy_get_by_index (struct device*,struct device_node*,int) ;

__attribute__((used)) static int armada8k_pcie_setup_phys(struct armada8k_pcie *pcie)
{
 struct dw_pcie *pci = pcie->pci;
 struct device *dev = pci->dev;
 struct device_node *node = dev->of_node;
 int ret = 0;
 int i;

 for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
  pcie->phy[i] = devm_of_phy_get_by_index(dev, node, i);
  if (IS_ERR(pcie->phy[i])) {
   if (PTR_ERR(pcie->phy[i]) != -ENODEV)
    return PTR_ERR(pcie->phy[i]);

   pcie->phy[i] = ((void*)0);
   continue;
  }

  pcie->phy_count++;
 }


 if (!pcie->phy_count)
  dev_warn(dev, "No available PHY\n");

 ret = armada8k_pcie_enable_phys(pcie);
 if (ret)
  dev_err(dev, "Failed to initialize PHY(s) (%d)\n", ret);

 return ret;
}
