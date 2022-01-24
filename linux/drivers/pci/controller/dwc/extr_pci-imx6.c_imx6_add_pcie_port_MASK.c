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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pcie_port {scalar_t__ msi_irq; int /*<<< orphan*/ * ops; } ;
struct imx6_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {struct pcie_port pp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct pcie_port*) ; 
 int /*<<< orphan*/  imx6_pcie_host_ops ; 
 scalar_t__ FUNC3 (struct platform_device*,char*) ; 

__attribute__((used)) static int FUNC4(struct imx6_pcie *imx6_pcie,
			      struct platform_device *pdev)
{
	struct dw_pcie *pci = imx6_pcie->pci;
	struct pcie_port *pp = &pci->pp;
	struct device *dev = &pdev->dev;
	int ret;

	if (FUNC0(CONFIG_PCI_MSI)) {
		pp->msi_irq = FUNC3(pdev, "msi");
		if (pp->msi_irq <= 0) {
			FUNC1(dev, "failed to get MSI irq\n");
			return -ENODEV;
		}
	}

	pp->ops = &imx6_pcie_host_ops;

	ret = FUNC2(pp);
	if (ret) {
		FUNC1(dev, "failed to initialize host\n");
		return ret;
	}

	return 0;
}