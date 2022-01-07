
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int irq1; int irq2; } ;
struct rcar_pcie {TYPE_1__ msi; int bus_clk; int base; int phy; struct device* dev; } ;
struct device {int of_node; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_phy_optional_get (struct device*,char*) ;
 int irq_dispose_mapping (int) ;
 int irq_of_parse_and_map (int ,int) ;
 int of_address_to_resource (int ,int ,struct resource*) ;

__attribute__((used)) static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
{
 struct device *dev = pcie->dev;
 struct resource res;
 int err, i;

 pcie->phy = devm_phy_optional_get(dev, "pcie");
 if (IS_ERR(pcie->phy))
  return PTR_ERR(pcie->phy);

 err = of_address_to_resource(dev->of_node, 0, &res);
 if (err)
  return err;

 pcie->base = devm_ioremap_resource(dev, &res);
 if (IS_ERR(pcie->base))
  return PTR_ERR(pcie->base);

 pcie->bus_clk = devm_clk_get(dev, "pcie_bus");
 if (IS_ERR(pcie->bus_clk)) {
  dev_err(dev, "cannot get pcie bus clock\n");
  return PTR_ERR(pcie->bus_clk);
 }

 i = irq_of_parse_and_map(dev->of_node, 0);
 if (!i) {
  dev_err(dev, "cannot get platform resources for msi interrupt\n");
  err = -ENOENT;
  goto err_irq1;
 }
 pcie->msi.irq1 = i;

 i = irq_of_parse_and_map(dev->of_node, 1);
 if (!i) {
  dev_err(dev, "cannot get platform resources for msi interrupt\n");
  err = -ENOENT;
  goto err_irq2;
 }
 pcie->msi.irq2 = i;

 return 0;

err_irq2:
 irq_dispose_mapping(pcie->msi.irq1);
err_irq1:
 return err;
}
