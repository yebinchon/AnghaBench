#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tegra_xusb_pad {int /*<<< orphan*/  dev; struct tegra_xusb_pad_soc const* soc; int /*<<< orphan*/ * ops; } ;
struct tegra_xusb_pcie_pad {int /*<<< orphan*/  rst; int /*<<< orphan*/  pll; struct tegra_xusb_pad base; } ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_pad_soc {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tegra_xusb_pad* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tegra_xusb_pad*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_xusb_pcie_pad*) ; 
 struct tegra_xusb_pcie_pad* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra210_pcie_lane_ops ; 
 int /*<<< orphan*/  tegra210_pcie_phy_ops ; 
 int FUNC10 (struct tegra_xusb_pad*,struct tegra_xusb_padctl*,struct device_node*) ; 
 int FUNC11 (struct tegra_xusb_pad*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct tegra_xusb_pad *
FUNC12(struct tegra_xusb_padctl *padctl,
			const struct tegra_xusb_pad_soc *soc,
			struct device_node *np)
{
	struct tegra_xusb_pcie_pad *pcie;
	struct tegra_xusb_pad *pad;
	int err;

	pcie = FUNC9(sizeof(*pcie), GFP_KERNEL);
	if (!pcie)
		return FUNC0(-ENOMEM);

	pad = &pcie->base;
	pad->ops = &tegra210_pcie_lane_ops;
	pad->soc = soc;

	err = FUNC10(pad, padctl, np);
	if (err < 0) {
		FUNC8(pcie);
		goto out;
	}

	pcie->pll = FUNC6(&pad->dev, "pll");
	if (FUNC1(pcie->pll)) {
		err = FUNC2(pcie->pll);
		FUNC3(&pad->dev, "failed to get PLL: %d\n", err);
		goto unregister;
	}

	pcie->rst = FUNC7(&pad->dev, "phy");
	if (FUNC1(pcie->rst)) {
		err = FUNC2(pcie->rst);
		FUNC3(&pad->dev, "failed to get PCIe pad reset: %d\n", err);
		goto unregister;
	}

	err = FUNC11(pad, &tegra210_pcie_phy_ops);
	if (err < 0)
		goto unregister;

	FUNC4(&pad->dev, pad);

	return pad;

unregister:
	FUNC5(&pad->dev);
out:
	return FUNC0(err);
}