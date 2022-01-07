
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie {int legacy_phy; int phy; struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int devm_phy_optional_get (struct device*,char*) ;
 int phy_init (int ) ;

__attribute__((used)) static int tegra_pcie_phys_get_legacy(struct tegra_pcie *pcie)
{
 struct device *dev = pcie->dev;
 int err;

 pcie->phy = devm_phy_optional_get(dev, "pcie");
 if (IS_ERR(pcie->phy)) {
  err = PTR_ERR(pcie->phy);
  dev_err(dev, "failed to get PHY: %d\n", err);
  return err;
 }

 err = phy_init(pcie->phy);
 if (err < 0) {
  dev_err(dev, "failed to initialize PHY: %d\n", err);
  return err;
 }

 pcie->legacy_phy = 1;

 return 0;
}
