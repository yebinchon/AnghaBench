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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mobiveil_pcie {int /*<<< orphan*/  irq; void* ppio_wins; void* apio_wins; void* apb_csr_base; int /*<<< orphan*/  pcie_reg_base; void* csr_axi_slave_base; struct resource* ob_io_res; void* config_axi_slave_base; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 void* MAX_PIO_WINDOWS ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device*,struct resource*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct mobiveil_pcie *pcie)
{
	struct device *dev = &pcie->pdev->dev;
	struct platform_device *pdev = pcie->pdev;
	struct device_node *node = dev->of_node;
	struct resource *res;

	/* map config resource */
	res = FUNC6(pdev, IORESOURCE_MEM,
					   "config_axi_slave");
	pcie->config_axi_slave_base = FUNC3(dev, res);
	if (FUNC0(pcie->config_axi_slave_base))
		return FUNC1(pcie->config_axi_slave_base);
	pcie->ob_io_res = res;

	/* map csr resource */
	res = FUNC6(pdev, IORESOURCE_MEM,
					   "csr_axi_slave");
	pcie->csr_axi_slave_base = FUNC3(dev, res);
	if (FUNC0(pcie->csr_axi_slave_base))
		return FUNC1(pcie->csr_axi_slave_base);
	pcie->pcie_reg_base = res->start;

	/* map MSI config resource */
	res = FUNC6(pdev, IORESOURCE_MEM, "apb_csr");
	pcie->apb_csr_base = FUNC3(dev, res);
	if (FUNC0(pcie->apb_csr_base))
		return FUNC1(pcie->apb_csr_base);

	/* read the number of windows requested */
	if (FUNC4(node, "apio-wins", &pcie->apio_wins))
		pcie->apio_wins = MAX_PIO_WINDOWS;

	if (FUNC4(node, "ppio-wins", &pcie->ppio_wins))
		pcie->ppio_wins = MAX_PIO_WINDOWS;

	pcie->irq = FUNC5(pdev, 0);
	if (pcie->irq <= 0) {
		FUNC2(dev, "failed to map IRQ: %d\n", pcie->irq);
		return -ENODEV;
	}

	return 0;
}