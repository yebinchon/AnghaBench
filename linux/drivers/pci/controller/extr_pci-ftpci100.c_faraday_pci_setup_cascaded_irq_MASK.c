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
struct faraday_pci {int /*<<< orphan*/  irqdomain; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_NUM_INTX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  faraday_pci_irq_handler ; 
 int /*<<< orphan*/  faraday_pci_irqdomain_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct faraday_pci*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct faraday_pci*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 

__attribute__((used)) static int FUNC7(struct faraday_pci *p)
{
	struct device_node *intc = FUNC4(p->dev->of_node, NULL);
	int irq;
	int i;

	if (!intc) {
		FUNC0(p->dev, "missing child interrupt-controller node\n");
		return -EINVAL;
	}

	/* All PCI IRQs cascade off this one */
	irq = FUNC5(intc, 0);
	if (irq <= 0) {
		FUNC0(p->dev, "failed to get parent IRQ\n");
		FUNC6(intc);
		return irq ?: -EINVAL;
	}

	p->irqdomain = FUNC2(intc, PCI_NUM_INTX,
					     &faraday_pci_irqdomain_ops, p);
	FUNC6(intc);
	if (!p->irqdomain) {
		FUNC0(p->dev, "failed to create Gemini PCI IRQ domain\n");
		return -EINVAL;
	}

	FUNC3(irq, faraday_pci_irq_handler, p);

	for (i = 0; i < 4; i++)
		FUNC1(p->irqdomain, i);

	return 0;
}