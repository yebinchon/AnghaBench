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
struct pcie_port {int /*<<< orphan*/  msi_irq; } ;
struct TYPE_2__ {struct pcie_port pp; } ;
struct tegra_pcie_dw {int /*<<< orphan*/  debugfs; int /*<<< orphan*/  link_state; TYPE_1__ pci; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int ENODEV ; 
 int ENOMEDIUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 char* FUNC3 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct tegra_pcie_dw*) ; 

__attribute__((used)) static int FUNC14(struct tegra_pcie_dw *pcie)
{
	struct pcie_port *pp = &pcie->pci.pp;
	struct device *dev = pcie->dev;
	char *name;
	int ret;

	if (FUNC0(CONFIG_PCI_MSI)) {
		pp->msi_irq = FUNC5(dev->of_node, "msi");
		if (!pp->msi_irq) {
			FUNC2(dev, "Failed to get MSI interrupt\n");
			return -ENODEV;
		}
	}

	FUNC8(dev);

	ret = FUNC9(dev);
	if (ret < 0) {
		FUNC2(dev, "Failed to get runtime sync for PCIe dev: %d\n",
			ret);
		goto fail_pm_get_sync;
	}

	ret = FUNC6(dev);
	if (ret < 0) {
		FUNC2(dev, "Failed to configure sideband pins: %d\n", ret);
		goto fail_pinctrl;
	}

	FUNC13(pcie);

	pcie->link_state = FUNC12(&pcie->pci);
	if (!pcie->link_state) {
		ret = -ENOMEDIUM;
		goto fail_host_init;
	}

	name = FUNC3(dev, GFP_KERNEL, "%pOFP", dev->of_node);
	if (!name) {
		ret = -ENOMEM;
		goto fail_host_init;
	}

	pcie->debugfs = FUNC1(name, NULL);
	if (!pcie->debugfs)
		FUNC2(dev, "Failed to create debugfs\n");
	else
		FUNC4(pcie);

	return ret;

fail_host_init:
	FUNC11(pcie);
fail_pinctrl:
	FUNC10(dev);
fail_pm_get_sync:
	FUNC7(dev);
	return ret;
}