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
struct keystone_pcie {int* legacy_host_irqs; struct irq_domain* legacy_irq_domain; scalar_t__ is_am6; struct device_node* np; TYPE_1__* pci; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INTx_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCI_NUM_INTX ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct irq_domain* FUNC3 (struct device_node*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct keystone_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (struct keystone_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ks_pcie_legacy_irq_domain_ops ; 
 int /*<<< orphan*/  ks_pcie_legacy_irq_handler ; 
 struct device_node* FUNC7 (struct device_node*,char*) ; 
 int FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 

__attribute__((used)) static int FUNC10(struct keystone_pcie *ks_pcie)
{
	struct device *dev = ks_pcie->pci->dev;
	struct irq_domain *legacy_irq_domain;
	struct device_node *np = ks_pcie->np;
	struct device_node *intc_np;
	int irq_count, irq, ret = 0, i;

	intc_np = FUNC7(np, "legacy-interrupt-controller");
	if (!intc_np) {
		/*
		 * Since legacy interrupts are modeled as edge-interrupts in
		 * AM6, keep it disabled for now.
		 */
		if (ks_pcie->is_am6)
			return 0;
		FUNC2(dev, "legacy-interrupt-controller node is absent\n");
		return -EINVAL;
	}

	irq_count = FUNC8(intc_np);
	if (!irq_count) {
		FUNC1(dev, "No IRQ entries in legacy-interrupt-controller\n");
		ret = -EINVAL;
		goto err;
	}

	for (i = 0; i < irq_count; i++) {
		irq = FUNC4(intc_np, i);
		if (!irq) {
			ret = -EINVAL;
			goto err;
		}
		ks_pcie->legacy_host_irqs[i] = irq;

		FUNC5(irq,
						 ks_pcie_legacy_irq_handler,
						 ks_pcie);
	}

	legacy_irq_domain =
		FUNC3(intc_np, PCI_NUM_INTX,
				      &ks_pcie_legacy_irq_domain_ops, NULL);
	if (!legacy_irq_domain) {
		FUNC1(dev, "Failed to add irq domain for legacy irqs\n");
		ret = -EINVAL;
		goto err;
	}
	ks_pcie->legacy_irq_domain = legacy_irq_domain;

	for (i = 0; i < PCI_NUM_INTX; i++)
		FUNC6(ks_pcie, FUNC0(i), INTx_EN);

err:
	FUNC9(intc_np);
	return ret;
}