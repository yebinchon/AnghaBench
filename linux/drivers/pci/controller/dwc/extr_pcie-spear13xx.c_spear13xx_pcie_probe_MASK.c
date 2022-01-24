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
struct spear13xx_pcie {int is_gen1; int /*<<< orphan*/  clk; int /*<<< orphan*/  app_base; int /*<<< orphan*/  phy; struct dw_pcie* pci; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dw_pcie {int /*<<< orphan*/  dbi_base; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  dw_pcie_ops ; 
 scalar_t__ FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct spear13xx_pcie*) ; 
 int FUNC14 (struct spear13xx_pcie*,struct platform_device*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct dw_pcie *pci;
	struct spear13xx_pcie *spear13xx_pcie;
	struct device_node *np = dev->of_node;
	struct resource *dbi_base;
	int ret;

	spear13xx_pcie = FUNC7(dev, sizeof(*spear13xx_pcie), GFP_KERNEL);
	if (!spear13xx_pcie)
		return -ENOMEM;

	pci = FUNC7(dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	pci->dev = dev;
	pci->ops = &dw_pcie_ops;

	spear13xx_pcie->pci = pci;

	spear13xx_pcie->phy = FUNC9(dev, "pcie-phy");
	if (FUNC0(spear13xx_pcie->phy)) {
		ret = FUNC1(spear13xx_pcie->phy);
		if (ret == -EPROBE_DEFER)
			FUNC5(dev, "probe deferred\n");
		else
			FUNC4(dev, "couldn't get pcie-phy\n");
		return ret;
	}

	FUNC11(spear13xx_pcie->phy);

	spear13xx_pcie->clk = FUNC6(dev, NULL);
	if (FUNC0(spear13xx_pcie->clk)) {
		FUNC4(dev, "couldn't get clk for pcie\n");
		return FUNC1(spear13xx_pcie->clk);
	}
	ret = FUNC3(spear13xx_pcie->clk);
	if (ret) {
		FUNC4(dev, "couldn't enable clk for pcie\n");
		return ret;
	}

	dbi_base = FUNC12(pdev, IORESOURCE_MEM, "dbi");
	pci->dbi_base = FUNC8(dev, dbi_base);
	if (FUNC0(pci->dbi_base)) {
		FUNC4(dev, "couldn't remap dbi base %p\n", dbi_base);
		ret = FUNC1(pci->dbi_base);
		goto fail_clk;
	}
	spear13xx_pcie->app_base = pci->dbi_base + 0x2000;

	if (FUNC10(np, "st,pcie-is-gen1"))
		spear13xx_pcie->is_gen1 = true;

	FUNC13(pdev, spear13xx_pcie);

	ret = FUNC14(spear13xx_pcie, pdev);
	if (ret < 0)
		goto fail_clk;

	return 0;

fail_clk:
	FUNC2(spear13xx_pcie->clk);

	return ret;
}