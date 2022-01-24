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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dw_pcie {scalar_t__ dbi_base; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct armada8k_pcie {scalar_t__ clk; scalar_t__ clk_reg; struct dw_pcie* pci; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct armada8k_pcie*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct armada8k_pcie*) ; 
 int FUNC5 (struct armada8k_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,struct resource*) ; 
 void* FUNC9 (struct device*,char*) ; 
 void* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  dw_pcie_ops ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct armada8k_pcie*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct dw_pcie *pci;
	struct armada8k_pcie *pcie;
	struct device *dev = &pdev->dev;
	struct resource *base;
	int ret;

	pcie = FUNC10(dev, sizeof(*pcie), GFP_KERNEL);
	if (!pcie)
		return -ENOMEM;

	pci = FUNC10(dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	pci->dev = dev;
	pci->ops = &dw_pcie_ops;

	pcie->pci = pci;

	pcie->clk = FUNC9(dev, NULL);
	if (FUNC1(pcie->clk))
		return FUNC2(pcie->clk);

	ret = FUNC7(pcie->clk);
	if (ret)
		return ret;

	pcie->clk_reg = FUNC9(dev, "reg");
	if (pcie->clk_reg == FUNC0(-EPROBE_DEFER)) {
		ret = -EPROBE_DEFER;
		goto fail;
	}
	if (!FUNC1(pcie->clk_reg)) {
		ret = FUNC7(pcie->clk_reg);
		if (ret)
			goto fail_clkreg;
	}

	/* Get the dw-pcie unit configuration/control registers base. */
	base = FUNC12(pdev, IORESOURCE_MEM, "ctrl");
	pci->dbi_base = FUNC11(dev, base);
	if (FUNC1(pci->dbi_base)) {
		FUNC8(dev, "couldn't remap regs base %p\n", base);
		ret = FUNC2(pci->dbi_base);
		goto fail_clkreg;
	}

	ret = FUNC5(pcie);
	if (ret)
		goto fail_clkreg;

	FUNC13(pdev, pcie);

	ret = FUNC3(pcie, pdev);
	if (ret)
		goto disable_phy;

	return 0;

disable_phy:
	FUNC4(pcie);
fail_clkreg:
	FUNC6(pcie->clk_reg);
fail:
	FUNC6(pcie->clk);

	return ret;
}