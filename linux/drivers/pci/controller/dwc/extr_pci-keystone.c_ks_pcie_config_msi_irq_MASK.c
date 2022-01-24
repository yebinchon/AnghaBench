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
struct keystone_pcie {int /*<<< orphan*/  msi_host_irq; scalar_t__ is_am6; struct device_node* np; TYPE_1__* pci; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct irq_data* FUNC3 (int) ; 
 int FUNC4 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct keystone_pcie*) ; 
 int /*<<< orphan*/  ks_pcie_msi_irq_handler ; 
 struct device_node* FUNC6 (struct device_node*,char*) ; 
 int FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 

__attribute__((used)) static int FUNC9(struct keystone_pcie *ks_pcie)
{
	struct device *dev = ks_pcie->pci->dev;
	struct device_node *np = ks_pcie->np;
	struct device_node *intc_np;
	struct irq_data *irq_data;
	int irq_count, irq, ret, i;

	if (!FUNC0(CONFIG_PCI_MSI))
		return 0;

	intc_np = FUNC6(np, "msi-interrupt-controller");
	if (!intc_np) {
		if (ks_pcie->is_am6)
			return 0;
		FUNC2(dev, "msi-interrupt-controller node is absent\n");
		return -EINVAL;
	}

	irq_count = FUNC7(intc_np);
	if (!irq_count) {
		FUNC1(dev, "No IRQ entries in msi-interrupt-controller\n");
		ret = -EINVAL;
		goto err;
	}

	for (i = 0; i < irq_count; i++) {
		irq = FUNC4(intc_np, i);
		if (!irq) {
			ret = -EINVAL;
			goto err;
		}

		if (!ks_pcie->msi_host_irq) {
			irq_data = FUNC3(irq);
			if (!irq_data) {
				ret = -EINVAL;
				goto err;
			}
			ks_pcie->msi_host_irq = irq_data->hwirq;
		}

		FUNC5(irq, ks_pcie_msi_irq_handler,
						 ks_pcie);
	}

	FUNC8(intc_np);
	return 0;

err:
	FUNC8(intc_np);
	return ret;
}