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
struct irq_chip {int /*<<< orphan*/  irq_unmask; void* irq_mask_ack; void* irq_mask; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct advk_pcie {int /*<<< orphan*/  irq_domain; struct irq_chip irq_chip; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_NUM_INTX ; 
 int /*<<< orphan*/  advk_pcie_irq_domain_ops ; 
 void* advk_pcie_irq_mask ; 
 int /*<<< orphan*/  advk_pcie_irq_unmask ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct advk_pcie*) ; 
 struct device_node* FUNC4 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 

__attribute__((used)) static int FUNC6(struct advk_pcie *pcie)
{
	struct device *dev = &pcie->pdev->dev;
	struct device_node *node = dev->of_node;
	struct device_node *pcie_intc_node;
	struct irq_chip *irq_chip;
	int ret = 0;

	pcie_intc_node =  FUNC4(node, NULL);
	if (!pcie_intc_node) {
		FUNC0(dev, "No PCIe Intc node found\n");
		return -ENODEV;
	}

	irq_chip = &pcie->irq_chip;

	irq_chip->name = FUNC2(dev, GFP_KERNEL, "%s-irq",
					FUNC1(dev));
	if (!irq_chip->name) {
		ret = -ENOMEM;
		goto out_put_node;
	}

	irq_chip->irq_mask = advk_pcie_irq_mask;
	irq_chip->irq_mask_ack = advk_pcie_irq_mask;
	irq_chip->irq_unmask = advk_pcie_irq_unmask;

	pcie->irq_domain =
		FUNC3(pcie_intc_node, PCI_NUM_INTX,
				      &advk_pcie_irq_domain_ops, pcie);
	if (!pcie->irq_domain) {
		FUNC0(dev, "Failed to get a INTx IRQ domain\n");
		ret = -ENOMEM;
		goto out_put_node;
	}

out_put_node:
	FUNC5(pcie_intc_node);
	return ret;
}