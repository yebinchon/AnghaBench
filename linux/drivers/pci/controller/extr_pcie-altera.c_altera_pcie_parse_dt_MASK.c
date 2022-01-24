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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct altera_pcie {int irq; void* hip_base; TYPE_1__* pcie_data; void* cra_base; struct platform_device* pdev; } ;
struct TYPE_2__ {scalar_t__ version; } ;

/* Variables and functions */
 scalar_t__ ALTERA_PCIE_V2 ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  altera_pcie_isr ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 void* FUNC3 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct altera_pcie*) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct altera_pcie *pcie)
{
	struct device *dev = &pcie->pdev->dev;
	struct platform_device *pdev = pcie->pdev;
	struct resource *cra;
	struct resource *hip;

	cra = FUNC6(pdev, IORESOURCE_MEM, "Cra");
	pcie->cra_base = FUNC3(dev, cra);
	if (FUNC0(pcie->cra_base))
		return FUNC1(pcie->cra_base);

	if (pcie->pcie_data->version == ALTERA_PCIE_V2) {
		hip = FUNC6(pdev, IORESOURCE_MEM, "Hip");
		pcie->hip_base = FUNC3(&pdev->dev, hip);
		if (FUNC0(pcie->hip_base))
			return FUNC1(pcie->hip_base);
	}

	/* setup IRQ */
	pcie->irq = FUNC5(pdev, 0);
	if (pcie->irq < 0) {
		FUNC2(dev, "failed to get IRQ: %d\n", pcie->irq);
		return pcie->irq;
	}

	FUNC4(pcie->irq, altera_pcie_isr, pcie);
	return 0;
}