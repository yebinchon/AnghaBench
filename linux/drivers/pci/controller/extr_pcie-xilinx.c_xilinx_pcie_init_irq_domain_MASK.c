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
struct xilinx_pcie_port {void* msi_domain; void* leg_domain; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_NUM_INTX ; 
 int /*<<< orphan*/  XILINX_NUM_MSI_IRQS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  intx_domain_ops ; 
 void* FUNC2 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct xilinx_pcie_port*) ; 
 int /*<<< orphan*/  msi_domain_ops ; 
 struct device_node* FUNC3 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (struct xilinx_pcie_port*) ; 
 struct xilinx_pcie_port xilinx_pcie_msi_chip ; 

__attribute__((used)) static int FUNC6(struct xilinx_pcie_port *port)
{
	struct device *dev = port->dev;
	struct device_node *node = dev->of_node;
	struct device_node *pcie_intc_node;
	int ret;

	/* Setup INTx */
	pcie_intc_node = FUNC3(node, NULL);
	if (!pcie_intc_node) {
		FUNC1(dev, "No PCIe Intc node found\n");
		return -ENODEV;
	}

	port->leg_domain = FUNC2(pcie_intc_node, PCI_NUM_INTX,
						 &intx_domain_ops,
						 port);
	FUNC4(pcie_intc_node);
	if (!port->leg_domain) {
		FUNC1(dev, "Failed to get a INTx IRQ domain\n");
		return -ENODEV;
	}

	/* Setup MSI */
	if (FUNC0(CONFIG_PCI_MSI)) {
		port->msi_domain = FUNC2(node,
							 XILINX_NUM_MSI_IRQS,
							 &msi_domain_ops,
							 &xilinx_pcie_msi_chip);
		if (!port->msi_domain) {
			FUNC1(dev, "Failed to get a MSI IRQ domain\n");
			return -ENODEV;
		}

		ret = FUNC5(port);
		if (ret)
			return ret;
	}

	return 0;
}