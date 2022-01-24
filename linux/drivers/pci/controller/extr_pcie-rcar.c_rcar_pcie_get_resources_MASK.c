#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_2__ {int irq1; int irq2; } ;
struct rcar_pcie {TYPE_1__ msi; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  base; int /*<<< orphan*/  phy; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 

__attribute__((used)) static int FUNC9(struct rcar_pcie *pcie)
{
	struct device *dev = pcie->dev;
	struct resource res;
	int err, i;

	pcie->phy = FUNC5(dev, "pcie");
	if (FUNC0(pcie->phy))
		return FUNC1(pcie->phy);

	err = FUNC8(dev->of_node, 0, &res);
	if (err)
		return err;

	pcie->base = FUNC4(dev, &res);
	if (FUNC0(pcie->base))
		return FUNC1(pcie->base);

	pcie->bus_clk = FUNC3(dev, "pcie_bus");
	if (FUNC0(pcie->bus_clk)) {
		FUNC2(dev, "cannot get pcie bus clock\n");
		return FUNC1(pcie->bus_clk);
	}

	i = FUNC7(dev->of_node, 0);
	if (!i) {
		FUNC2(dev, "cannot get platform resources for msi interrupt\n");
		err = -ENOENT;
		goto err_irq1;
	}
	pcie->msi.irq1 = i;

	i = FUNC7(dev->of_node, 1);
	if (!i) {
		FUNC2(dev, "cannot get platform resources for msi interrupt\n");
		err = -ENOENT;
		goto err_irq2;
	}
	pcie->msi.irq2 = i;

	return 0;

err_irq2:
	FUNC6(pcie->msi.irq1);
err_irq1:
	return err;
}