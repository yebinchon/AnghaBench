
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int owner; int * confops; int * pmxops; int * pctlops; int npins; int pins; int name; } ;
struct tegra_xusb_padctl {struct phy* rst; struct phy* provider; struct phy** phys; struct phy* pinctrl; TYPE_1__ desc; TYPE_2__* dev; struct phy* regs; int soc; int lock; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy {int dummy; } ;
struct of_device_id {int data; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 size_t TEGRA_XUSB_PADCTL_PCIE ;
 size_t TEGRA_XUSB_PADCTL_SATA ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (TYPE_2__*) ;
 struct phy* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct tegra_xusb_padctl* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct phy* devm_of_phy_provider_register (TYPE_2__*,int ) ;
 struct phy* devm_phy_create (TYPE_2__*,int *,int *) ;
 struct phy* devm_pinctrl_register (TYPE_2__*,TYPE_1__*,struct tegra_xusb_padctl*) ;
 struct phy* devm_reset_control_get_exclusive (TYPE_2__*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int pcie_phy_ops ;
 int phy_set_drvdata (struct phy*,struct tegra_xusb_padctl*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_xusb_padctl*) ;
 int reset_control_assert (struct phy*) ;
 int reset_control_deassert (struct phy*) ;
 int sata_phy_ops ;
 int tegra124_pins ;
 int tegra_xusb_padctl_of_match ;
 int tegra_xusb_padctl_pinconf_ops ;
 int tegra_xusb_padctl_pinctrl_ops ;
 int tegra_xusb_padctl_pinmux_ops ;
 int tegra_xusb_padctl_xlate ;

int tegra_xusb_padctl_legacy_probe(struct platform_device *pdev)
{
 struct tegra_xusb_padctl *padctl;
 const struct of_device_id *match;
 struct resource *res;
 struct phy *phy;
 int err;

 padctl = devm_kzalloc(&pdev->dev, sizeof(*padctl), GFP_KERNEL);
 if (!padctl)
  return -ENOMEM;

 platform_set_drvdata(pdev, padctl);
 mutex_init(&padctl->lock);
 padctl->dev = &pdev->dev;

 match = of_match_node(tegra_xusb_padctl_of_match, pdev->dev.of_node);
 padctl->soc = match->data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 padctl->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(padctl->regs))
  return PTR_ERR(padctl->regs);

 padctl->rst = devm_reset_control_get_exclusive(&pdev->dev, ((void*)0));
 if (IS_ERR(padctl->rst))
  return PTR_ERR(padctl->rst);

 err = reset_control_deassert(padctl->rst);
 if (err < 0)
  return err;

 memset(&padctl->desc, 0, sizeof(padctl->desc));
 padctl->desc.name = dev_name(padctl->dev);
 padctl->desc.pins = tegra124_pins;
 padctl->desc.npins = ARRAY_SIZE(tegra124_pins);
 padctl->desc.pctlops = &tegra_xusb_padctl_pinctrl_ops;
 padctl->desc.pmxops = &tegra_xusb_padctl_pinmux_ops;
 padctl->desc.confops = &tegra_xusb_padctl_pinconf_ops;
 padctl->desc.owner = THIS_MODULE;

 padctl->pinctrl = devm_pinctrl_register(&pdev->dev, &padctl->desc,
      padctl);
 if (IS_ERR(padctl->pinctrl)) {
  dev_err(&pdev->dev, "failed to register pincontrol\n");
  err = PTR_ERR(padctl->pinctrl);
  goto reset;
 }

 phy = devm_phy_create(&pdev->dev, ((void*)0), &pcie_phy_ops);
 if (IS_ERR(phy)) {
  err = PTR_ERR(phy);
  goto reset;
 }

 padctl->phys[TEGRA_XUSB_PADCTL_PCIE] = phy;
 phy_set_drvdata(phy, padctl);

 phy = devm_phy_create(&pdev->dev, ((void*)0), &sata_phy_ops);
 if (IS_ERR(phy)) {
  err = PTR_ERR(phy);
  goto reset;
 }

 padctl->phys[TEGRA_XUSB_PADCTL_SATA] = phy;
 phy_set_drvdata(phy, padctl);

 padctl->provider = devm_of_phy_provider_register(&pdev->dev,
        tegra_xusb_padctl_xlate);
 if (IS_ERR(padctl->provider)) {
  err = PTR_ERR(padctl->provider);
  dev_err(&pdev->dev, "failed to register PHYs: %d\n", err);
  goto reset;
 }

 return 0;

reset:
 reset_control_assert(padctl->rst);
 return err;
}
