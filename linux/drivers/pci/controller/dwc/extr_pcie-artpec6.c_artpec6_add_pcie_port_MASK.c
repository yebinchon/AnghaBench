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
struct platform_device {int dummy; } ;
struct pcie_port {scalar_t__ msi_irq; int /*<<< orphan*/ * ops; } ;
struct dw_pcie {struct device* dev; struct pcie_port pp; } ;
struct device {int dummy; } ;
struct artpec6_pcie {struct dw_pcie* pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  artpec6_pcie_host_ops ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct pcie_port*) ; 
 scalar_t__ FUNC3 (struct platform_device*,char*) ; 

__attribute__((used)) static int FUNC4(struct artpec6_pcie *artpec6_pcie,
				 struct platform_device *pdev)
{
	struct dw_pcie *pci = artpec6_pcie->pci;
	struct pcie_port *pp = &pci->pp;
	struct device *dev = pci->dev;
	int ret;

	if (FUNC0(CONFIG_PCI_MSI)) {
		pp->msi_irq = FUNC3(pdev, "msi");
		if (pp->msi_irq < 0) {
			FUNC1(dev, "failed to get MSI irq\n");
			return pp->msi_irq;
		}
	}

	pp->ops = &artpec6_pcie_host_ops;

	ret = FUNC2(pp);
	if (ret) {
		FUNC1(dev, "failed to initialize host\n");
		return ret;
	}

	return 0;
}