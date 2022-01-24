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
struct pcie_port {scalar_t__ msi_irq; int /*<<< orphan*/ * ops; } ;
struct dw_pcie {struct pcie_port pp; } ;
struct uniphier_pcie_priv {struct dw_pcie pci; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct pcie_port*) ; 
 scalar_t__ FUNC3 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  uniphier_pcie_host_ops ; 

__attribute__((used)) static int FUNC4(struct uniphier_pcie_priv *priv,
				  struct platform_device *pdev)
{
	struct dw_pcie *pci = &priv->pci;
	struct pcie_port *pp = &pci->pp;
	struct device *dev = &pdev->dev;
	int ret;

	pp->ops = &uniphier_pcie_host_ops;

	if (FUNC0(CONFIG_PCI_MSI)) {
		pp->msi_irq = FUNC3(pdev, "msi");
		if (pp->msi_irq < 0)
			return pp->msi_irq;
	}

	ret = FUNC2(pp);
	if (ret) {
		FUNC1(dev, "Failed to initialize host (%d)\n", ret);
		return ret;
	}

	return 0;
}