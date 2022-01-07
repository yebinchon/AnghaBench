
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_pad {int dev; struct tegra_xusb_pad_soc const* soc; int * ops; } ;
struct tegra_xusb_pcie_pad {int rst; int pll; struct tegra_xusb_pad base; } ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_pad_soc {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 struct tegra_xusb_pad* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int dev_set_drvdata (int *,struct tegra_xusb_pad*) ;
 int device_unregister (int *) ;
 int devm_clk_get (int *,char*) ;
 int devm_reset_control_get (int *,char*) ;
 int kfree (struct tegra_xusb_pcie_pad*) ;
 struct tegra_xusb_pcie_pad* kzalloc (int,int ) ;
 int tegra210_pcie_lane_ops ;
 int tegra210_pcie_phy_ops ;
 int tegra_xusb_pad_init (struct tegra_xusb_pad*,struct tegra_xusb_padctl*,struct device_node*) ;
 int tegra_xusb_pad_register (struct tegra_xusb_pad*,int *) ;

__attribute__((used)) static struct tegra_xusb_pad *
tegra210_pcie_pad_probe(struct tegra_xusb_padctl *padctl,
   const struct tegra_xusb_pad_soc *soc,
   struct device_node *np)
{
 struct tegra_xusb_pcie_pad *pcie;
 struct tegra_xusb_pad *pad;
 int err;

 pcie = kzalloc(sizeof(*pcie), GFP_KERNEL);
 if (!pcie)
  return ERR_PTR(-ENOMEM);

 pad = &pcie->base;
 pad->ops = &tegra210_pcie_lane_ops;
 pad->soc = soc;

 err = tegra_xusb_pad_init(pad, padctl, np);
 if (err < 0) {
  kfree(pcie);
  goto out;
 }

 pcie->pll = devm_clk_get(&pad->dev, "pll");
 if (IS_ERR(pcie->pll)) {
  err = PTR_ERR(pcie->pll);
  dev_err(&pad->dev, "failed to get PLL: %d\n", err);
  goto unregister;
 }

 pcie->rst = devm_reset_control_get(&pad->dev, "phy");
 if (IS_ERR(pcie->rst)) {
  err = PTR_ERR(pcie->rst);
  dev_err(&pad->dev, "failed to get PCIe pad reset: %d\n", err);
  goto unregister;
 }

 err = tegra_xusb_pad_register(pad, &tegra210_pcie_phy_ops);
 if (err < 0)
  goto unregister;

 dev_set_drvdata(&pad->dev, pad);

 return pad;

unregister:
 device_unregister(&pad->dev);
out:
 return ERR_PTR(err);
}
