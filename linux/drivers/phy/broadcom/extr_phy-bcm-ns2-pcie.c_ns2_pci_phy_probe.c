
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_provider {int dev; } ;
struct phy {int dev; } ;
struct device {int of_node; } ;
struct mdio_device {struct device dev; } ;


 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PTR_ERR (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_name (struct device*) ;
 struct phy_provider* devm_of_phy_provider_register (int *,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int ,int *) ;
 int ns2_pci_phy_ops ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (struct phy_provider*,struct mdio_device*) ;

__attribute__((used)) static int ns2_pci_phy_probe(struct mdio_device *mdiodev)
{
 struct device *dev = &mdiodev->dev;
 struct phy_provider *provider;
 struct phy *phy;

 phy = devm_phy_create(dev, dev->of_node, &ns2_pci_phy_ops);
 if (IS_ERR(phy)) {
  dev_err(dev, "failed to create Phy\n");
  return PTR_ERR(phy);
 }

 phy_set_drvdata(phy, mdiodev);

 provider = devm_of_phy_provider_register(&phy->dev,
       of_phy_simple_xlate);
 if (IS_ERR(provider)) {
  dev_err(dev, "failed to register Phy provider\n");
  return PTR_ERR(provider);
 }

 dev_info(dev, "%s PHY registered\n", dev_name(dev));

 return 0;
}
