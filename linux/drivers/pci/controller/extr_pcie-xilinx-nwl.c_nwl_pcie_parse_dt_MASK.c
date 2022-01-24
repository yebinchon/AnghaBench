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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct nwl_pcie {int irq_intx; int /*<<< orphan*/  phys_ecam_base; void* ecam_base; int /*<<< orphan*/  phys_pcie_reg_base; void* pcireg_base; int /*<<< orphan*/  phys_breg_base; void* breg_base; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 void* FUNC3 (struct device*,struct resource*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct nwl_pcie*) ; 
 int /*<<< orphan*/  nwl_pcie_leg_handler ; 
 int FUNC6 (struct platform_device*,char*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct nwl_pcie *pcie,
			     struct platform_device *pdev)
{
	struct device *dev = pcie->dev;
	struct resource *res;

	res = FUNC7(pdev, IORESOURCE_MEM, "breg");
	pcie->breg_base = FUNC3(dev, res);
	if (FUNC0(pcie->breg_base))
		return FUNC1(pcie->breg_base);
	pcie->phys_breg_base = res->start;

	res = FUNC7(pdev, IORESOURCE_MEM, "pcireg");
	pcie->pcireg_base = FUNC3(dev, res);
	if (FUNC0(pcie->pcireg_base))
		return FUNC1(pcie->pcireg_base);
	pcie->phys_pcie_reg_base = res->start;

	res = FUNC7(pdev, IORESOURCE_MEM, "cfg");
	pcie->ecam_base = FUNC4(dev, res);
	if (FUNC0(pcie->ecam_base))
		return FUNC1(pcie->ecam_base);
	pcie->phys_ecam_base = res->start;

	/* Get intx IRQ number */
	pcie->irq_intx = FUNC6(pdev, "intx");
	if (pcie->irq_intx < 0) {
		FUNC2(dev, "failed to get intx IRQ %d\n", pcie->irq_intx);
		return pcie->irq_intx;
	}

	FUNC5(pcie->irq_intx,
					 nwl_pcie_leg_handler, pcie);

	return 0;
}