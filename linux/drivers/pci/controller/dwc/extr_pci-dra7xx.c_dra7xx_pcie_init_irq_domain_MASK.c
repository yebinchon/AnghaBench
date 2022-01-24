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
struct pcie_port {int dummy; } ;
struct dw_pcie {struct device* dev; } ;
struct dra7xx_pcie {int /*<<< orphan*/  irq_domain; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCI_NUM_INTX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  intx_domain_ops ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pcie_port*) ; 
 struct device_node* FUNC2 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct dra7xx_pcie* FUNC4 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC5 (struct pcie_port*) ; 

__attribute__((used)) static int FUNC6(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC5(pp);
	struct device *dev = pci->dev;
	struct dra7xx_pcie *dra7xx = FUNC4(pci);
	struct device_node *node = dev->of_node;
	struct device_node *pcie_intc_node =  FUNC2(node, NULL);

	if (!pcie_intc_node) {
		FUNC0(dev, "No PCIe Intc node found\n");
		return -ENODEV;
	}

	dra7xx->irq_domain = FUNC1(pcie_intc_node, PCI_NUM_INTX,
						   &intx_domain_ops, pp);
	FUNC3(pcie_intc_node);
	if (!dra7xx->irq_domain) {
		FUNC0(dev, "Failed to get a INTx IRQ domain\n");
		return -ENODEV;
	}

	return 0;
}