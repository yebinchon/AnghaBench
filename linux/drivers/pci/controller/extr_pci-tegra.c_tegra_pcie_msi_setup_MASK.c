#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  teardown_irq; int /*<<< orphan*/  setup_irq; struct device* dev; } ;
struct tegra_msi {int irq; int /*<<< orphan*/  domain; TYPE_2__ chip; int /*<<< orphan*/  virt; int /*<<< orphan*/  phys; int /*<<< orphan*/  lock; } ;
struct tegra_pcie {struct device* dev; struct tegra_msi msi; } ;
struct platform_device {int dummy; } ;
struct pci_host_bridge {TYPE_2__* msi; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_NO_KERNEL_MAPPING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_PCI_MSI_NR ; 
 int /*<<< orphan*/  IRQF_NO_THREAD ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct tegra_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_domain_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct pci_host_bridge* FUNC8 (struct tegra_pcie*) ; 
 int FUNC9 (struct platform_device*,char*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_pcie*) ; 
 TYPE_1__ tegra_msi_irq_chip ; 
 int /*<<< orphan*/  tegra_msi_setup_irq ; 
 int /*<<< orphan*/  tegra_msi_teardown_irq ; 
 int /*<<< orphan*/  tegra_pcie_msi_irq ; 
 struct platform_device* FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct tegra_pcie *pcie)
{
	struct pci_host_bridge *host = FUNC8(pcie);
	struct platform_device *pdev = FUNC11(pcie->dev);
	struct tegra_msi *msi = &pcie->msi;
	struct device *dev = pcie->dev;
	int err;

	FUNC7(&msi->lock);

	msi->chip.dev = dev;
	msi->chip.setup_irq = tegra_msi_setup_irq;
	msi->chip.teardown_irq = tegra_msi_teardown_irq;

	msi->domain = FUNC5(dev->of_node, INT_PCI_MSI_NR,
					    &msi_domain_ops, &msi->chip);
	if (!msi->domain) {
		FUNC1(dev, "failed to create IRQ domain\n");
		return -ENOMEM;
	}

	err = FUNC9(pdev, "msi");
	if (err < 0) {
		FUNC1(dev, "failed to get IRQ: %d\n", err);
		goto free_irq_domain;
	}

	msi->irq = err;

	err = FUNC10(msi->irq, tegra_pcie_msi_irq, IRQF_NO_THREAD,
			  tegra_msi_irq_chip.name, pcie);
	if (err < 0) {
		FUNC1(dev, "failed to request IRQ: %d\n", err);
		goto free_irq_domain;
	}

	/* Though the PCIe controller can address >32-bit address space, to
	 * facilitate endpoints that support only 32-bit MSI target address,
	 * the mask is set to 32-bit to make sure that MSI target address is
	 * always a 32-bit address
	 */
	err = FUNC3(dev, FUNC0(32));
	if (err < 0) {
		FUNC1(dev, "failed to set DMA coherent mask: %d\n", err);
		goto free_irq;
	}

	msi->virt = FUNC2(dev, PAGE_SIZE, &msi->phys, GFP_KERNEL,
				    DMA_ATTR_NO_KERNEL_MAPPING);
	if (!msi->virt) {
		FUNC1(dev, "failed to allocate DMA memory for MSI\n");
		err = -ENOMEM;
		goto free_irq;
	}

	host->msi = &msi->chip;

	return 0;

free_irq:
	FUNC4(msi->irq, pcie);
free_irq_domain:
	FUNC6(msi->domain);
	return err;
}