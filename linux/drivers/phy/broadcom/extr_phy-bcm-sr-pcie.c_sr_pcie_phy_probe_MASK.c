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
struct sr_pcie_phy_core {struct sr_pcie_phy* phys; int /*<<< orphan*/  pipemux; struct device* dev; struct phy_provider* mhb; struct phy_provider* cdru; struct phy_provider* base; } ;
struct sr_pcie_phy {unsigned int index; struct phy_provider* phy; struct sr_pcie_phy_core* core; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy_ops {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 unsigned int SR_NR_PCIE_PHYS ; 
 unsigned int SR_PAXC_PHY_IDX ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct sr_pcie_phy_core*) ; 
 struct phy_provider* FUNC5 (struct device*,struct resource*) ; 
 struct sr_pcie_phy_core* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC8 (struct device*,int /*<<< orphan*/ *,struct phy_ops const*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_provider*,struct sr_pcie_phy*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sr_pcie_phy_core*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_ops sr_paxc_phy_ops ; 
 struct phy_ops sr_pcie_phy_ops ; 
 int /*<<< orphan*/  sr_pcie_phy_xlate ; 
 void* FUNC13 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct sr_pcie_phy_core *core;
	struct resource *res;
	struct phy_provider *provider;
	unsigned int phy_idx = 0;

	core = FUNC6(dev, sizeof(*core), GFP_KERNEL);
	if (!core)
		return -ENOMEM;

	core->dev = dev;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	core->base = FUNC5(core->dev, res);
	if (FUNC0(core->base))
		return FUNC1(core->base);

	core->cdru = FUNC13(node, "brcm,sr-cdru");
	if (FUNC0(core->cdru)) {
		FUNC2(core->dev, "unable to find CDRU device\n");
		return FUNC1(core->cdru);
	}

	core->mhb = FUNC13(node, "brcm,sr-mhb");
	if (FUNC0(core->mhb)) {
		FUNC2(core->dev, "unable to find MHB device\n");
		return FUNC1(core->mhb);
	}

	/* read the PCIe PIPEMUX strap setting */
	core->pipemux = FUNC11(core);
	if (!FUNC10(core->pipemux)) {
		FUNC2(core->dev, "invalid PCIe PIPEMUX strap %u\n",
			core->pipemux);
		return -EIO;
	}

	for (phy_idx = 0; phy_idx < SR_NR_PCIE_PHYS; phy_idx++) {
		struct sr_pcie_phy *p = &core->phys[phy_idx];
		const struct phy_ops *ops;

		if (phy_idx == SR_PAXC_PHY_IDX)
			ops = &sr_paxc_phy_ops;
		else
			ops = &sr_pcie_phy_ops;

		p->phy = FUNC8(dev, NULL, ops);
		if (FUNC0(p->phy)) {
			FUNC2(dev, "failed to create PCIe PHY\n");
			return FUNC1(p->phy);
		}

		p->core = core;
		p->index = phy_idx;
		FUNC9(p->phy, p);
	}

	FUNC4(dev, core);

	provider = FUNC7(dev, sr_pcie_phy_xlate);
	if (FUNC0(provider)) {
		FUNC2(dev, "failed to register PHY provider\n");
		return FUNC1(provider);
	}

	FUNC3(dev, "Stingray PCIe PHY driver initialized\n");

	return 0;
}