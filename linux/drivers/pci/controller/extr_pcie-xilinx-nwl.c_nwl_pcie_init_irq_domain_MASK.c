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
struct nwl_pcie {int /*<<< orphan*/  leg_mask_lock; int /*<<< orphan*/  legacy_irq_domain; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_NUM_INTX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nwl_pcie*) ; 
 int /*<<< orphan*/  legacy_domain_ops ; 
 int /*<<< orphan*/  FUNC2 (struct nwl_pcie*) ; 
 struct device_node* FUNC3 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nwl_pcie *pcie)
{
	struct device *dev = pcie->dev;
	struct device_node *node = dev->of_node;
	struct device_node *legacy_intc_node;

	legacy_intc_node = FUNC3(node, NULL);
	if (!legacy_intc_node) {
		FUNC0(dev, "No legacy intc node found\n");
		return -EINVAL;
	}

	pcie->legacy_irq_domain = FUNC1(legacy_intc_node,
							PCI_NUM_INTX,
							&legacy_domain_ops,
							pcie);
	FUNC4(legacy_intc_node);
	if (!pcie->legacy_irq_domain) {
		FUNC0(dev, "failed to create IRQ domain\n");
		return -ENOMEM;
	}

	FUNC5(&pcie->leg_mask_lock);
	FUNC2(pcie);
	return 0;
}