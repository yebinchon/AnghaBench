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
struct mtk_pcie_port {int /*<<< orphan*/  irq_domain; TYPE_1__* pcie; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_NUM_INTX ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  intx_domain_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mtk_pcie_port*) ; 
 int FUNC3 (struct mtk_pcie_port*) ; 
 struct device_node* FUNC4 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 

__attribute__((used)) static int FUNC6(struct mtk_pcie_port *port,
				    struct device_node *node)
{
	struct device *dev = port->pcie->dev;
	struct device_node *pcie_intc_node;
	int ret;

	/* Setup INTx */
	pcie_intc_node = FUNC4(node, NULL);
	if (!pcie_intc_node) {
		FUNC1(dev, "no PCIe Intc node found\n");
		return -ENODEV;
	}

	port->irq_domain = FUNC2(pcie_intc_node, PCI_NUM_INTX,
						 &intx_domain_ops, port);
	FUNC5(pcie_intc_node);
	if (!port->irq_domain) {
		FUNC1(dev, "failed to get INTx IRQ domain\n");
		return -ENODEV;
	}

	if (FUNC0(CONFIG_PCI_MSI)) {
		ret = FUNC3(port);
		if (ret)
			return ret;
	}

	return 0;
}