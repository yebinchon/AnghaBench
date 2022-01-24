#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  owner; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; } ;
struct tegra_xusb_padctl {struct phy* rst; struct phy* provider; struct phy** phys; struct phy* pinctrl; TYPE_1__ desc; TYPE_2__* dev; struct phy* regs; int /*<<< orphan*/  soc; int /*<<< orphan*/  lock; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy {int dummy; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy*) ; 
 size_t TEGRA_XUSB_PADCTL_PCIE ; 
 size_t TEGRA_XUSB_PADCTL_SATA ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct phy* FUNC5 (TYPE_2__*,struct resource*) ; 
 struct tegra_xusb_padctl* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct phy* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phy* FUNC9 (TYPE_2__*,TYPE_1__*,struct tegra_xusb_padctl*) ; 
 struct phy* FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcie_phy_ops ; 
 int /*<<< orphan*/  FUNC14 (struct phy*,struct tegra_xusb_padctl*) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct tegra_xusb_padctl*) ; 
 int /*<<< orphan*/  FUNC17 (struct phy*) ; 
 int FUNC18 (struct phy*) ; 
 int /*<<< orphan*/  sata_phy_ops ; 
 int /*<<< orphan*/  tegra124_pins ; 
 int /*<<< orphan*/  tegra_xusb_padctl_of_match ; 
 int /*<<< orphan*/  tegra_xusb_padctl_pinconf_ops ; 
 int /*<<< orphan*/  tegra_xusb_padctl_pinctrl_ops ; 
 int /*<<< orphan*/  tegra_xusb_padctl_pinmux_ops ; 
 int /*<<< orphan*/  tegra_xusb_padctl_xlate ; 

int FUNC19(struct platform_device *pdev)
{
	struct tegra_xusb_padctl *padctl;
	const struct of_device_id *match;
	struct resource *res;
	struct phy *phy;
	int err;

	padctl = FUNC6(&pdev->dev, sizeof(*padctl), GFP_KERNEL);
	if (!padctl)
		return -ENOMEM;

	FUNC16(pdev, padctl);
	FUNC12(&padctl->lock);
	padctl->dev = &pdev->dev;

	match = FUNC13(tegra_xusb_padctl_of_match, pdev->dev.of_node);
	padctl->soc = match->data;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	padctl->regs = FUNC5(&pdev->dev, res);
	if (FUNC1(padctl->regs))
		return FUNC2(padctl->regs);

	padctl->rst = FUNC10(&pdev->dev, NULL);
	if (FUNC1(padctl->rst))
		return FUNC2(padctl->rst);

	err = FUNC18(padctl->rst);
	if (err < 0)
		return err;

	FUNC11(&padctl->desc, 0, sizeof(padctl->desc));
	padctl->desc.name = FUNC4(padctl->dev);
	padctl->desc.pins = tegra124_pins;
	padctl->desc.npins = FUNC0(tegra124_pins);
	padctl->desc.pctlops = &tegra_xusb_padctl_pinctrl_ops;
	padctl->desc.pmxops = &tegra_xusb_padctl_pinmux_ops;
	padctl->desc.confops = &tegra_xusb_padctl_pinconf_ops;
	padctl->desc.owner = THIS_MODULE;

	padctl->pinctrl = FUNC9(&pdev->dev, &padctl->desc,
						padctl);
	if (FUNC1(padctl->pinctrl)) {
		FUNC3(&pdev->dev, "failed to register pincontrol\n");
		err = FUNC2(padctl->pinctrl);
		goto reset;
	}

	phy = FUNC8(&pdev->dev, NULL, &pcie_phy_ops);
	if (FUNC1(phy)) {
		err = FUNC2(phy);
		goto reset;
	}

	padctl->phys[TEGRA_XUSB_PADCTL_PCIE] = phy;
	FUNC14(phy, padctl);

	phy = FUNC8(&pdev->dev, NULL, &sata_phy_ops);
	if (FUNC1(phy)) {
		err = FUNC2(phy);
		goto reset;
	}

	padctl->phys[TEGRA_XUSB_PADCTL_SATA] = phy;
	FUNC14(phy, padctl);

	padctl->provider = FUNC7(&pdev->dev,
							 tegra_xusb_padctl_xlate);
	if (FUNC1(padctl->provider)) {
		err = FUNC2(padctl->provider);
		FUNC3(&pdev->dev, "failed to register PHYs: %d\n", err);
		goto reset;
	}

	return 0;

reset:
	FUNC17(padctl->rst);
	return err;
}