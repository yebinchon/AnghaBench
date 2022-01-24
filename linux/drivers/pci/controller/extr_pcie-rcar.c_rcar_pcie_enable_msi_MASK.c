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
struct TYPE_4__ {int /*<<< orphan*/  teardown_irq; int /*<<< orphan*/  setup_irqs; int /*<<< orphan*/  setup_irq; struct device* dev; } ;
struct rcar_msi {scalar_t__ pages; int /*<<< orphan*/  irq2; int /*<<< orphan*/  irq1; int /*<<< orphan*/  domain; TYPE_2__ chip; int /*<<< orphan*/  lock; } ;
struct rcar_pcie {struct rcar_msi msi; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_PCI_MSI_NR ; 
 int IRQF_NO_THREAD ; 
 int IRQF_SHARED ; 
 int MSIFE ; 
 int /*<<< orphan*/  PCIEMSIALR ; 
 int /*<<< orphan*/  PCIEMSIAUR ; 
 int /*<<< orphan*/  PCIEMSIIER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct rcar_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_domain_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rcar_msi_irq_chip ; 
 int /*<<< orphan*/  rcar_msi_setup_irq ; 
 int /*<<< orphan*/  rcar_msi_setup_irqs ; 
 int /*<<< orphan*/  rcar_msi_teardown_irq ; 
 int /*<<< orphan*/  FUNC7 (struct rcar_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcar_pcie_msi_irq ; 
 int /*<<< orphan*/  FUNC8 (struct rcar_pcie*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static int FUNC11(struct rcar_pcie *pcie)
{
	struct device *dev = pcie->dev;
	struct rcar_msi *msi = &pcie->msi;
	phys_addr_t base;
	int err, i;

	FUNC6(&msi->lock);

	msi->chip.dev = dev;
	msi->chip.setup_irq = rcar_msi_setup_irq;
	msi->chip.setup_irqs = rcar_msi_setup_irqs;
	msi->chip.teardown_irq = rcar_msi_teardown_irq;

	msi->domain = FUNC4(dev->of_node, INT_PCI_MSI_NR,
					    &msi_domain_ops, &msi->chip);
	if (!msi->domain) {
		FUNC1(dev, "failed to create IRQ domain\n");
		return -ENOMEM;
	}

	for (i = 0; i < INT_PCI_MSI_NR; i++)
		FUNC3(msi->domain, i);

	/* Two irqs are for MSI, but they are also used for non-MSI irqs */
	err = FUNC2(dev, msi->irq1, rcar_pcie_msi_irq,
			       IRQF_SHARED | IRQF_NO_THREAD,
			       rcar_msi_irq_chip.name, pcie);
	if (err < 0) {
		FUNC1(dev, "failed to request IRQ: %d\n", err);
		goto err;
	}

	err = FUNC2(dev, msi->irq2, rcar_pcie_msi_irq,
			       IRQF_SHARED | IRQF_NO_THREAD,
			       rcar_msi_irq_chip.name, pcie);
	if (err < 0) {
		FUNC1(dev, "failed to request IRQ: %d\n", err);
		goto err;
	}

	/* setup MSI data target */
	msi->pages = FUNC0(GFP_KERNEL, 0);
	if (!msi->pages) {
		err = -ENOMEM;
		goto err;
	}
	base = FUNC10((void *)msi->pages);

	FUNC7(pcie, FUNC5(base) | MSIFE, PCIEMSIALR);
	FUNC7(pcie, FUNC9(base), PCIEMSIAUR);

	/* enable all MSI interrupts */
	FUNC7(pcie, 0xffffffff, PCIEMSIIER);

	return 0;

err:
	FUNC8(pcie);
	return err;
}