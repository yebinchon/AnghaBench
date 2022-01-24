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
struct pcie_port {int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  msi_domain; int /*<<< orphan*/  num_vectors; } ;
struct fwnode_handle {int dummy; } ;
struct dw_pcie {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  dw_pcie_msi_domain_info ; 
 int /*<<< orphan*/  dw_pcie_msi_domain_ops ; 
 int /*<<< orphan*/  FUNC1 (struct fwnode_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct fwnode_handle* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnode_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dw_pcie* FUNC5 (struct pcie_port*) ; 

int FUNC6(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC5(pp);
	struct fwnode_handle *fwnode = FUNC3(pci->dev->of_node);

	pp->irq_domain = FUNC1(fwnode, pp->num_vectors,
					       &dw_pcie_msi_domain_ops, pp);
	if (!pp->irq_domain) {
		FUNC0(pci->dev, "Failed to create IRQ domain\n");
		return -ENOMEM;
	}

	pp->msi_domain = FUNC4(fwnode,
						   &dw_pcie_msi_domain_info,
						   pp->irq_domain);
	if (!pp->msi_domain) {
		FUNC0(pci->dev, "Failed to create MSI domain\n");
		FUNC2(pp->irq_domain);
		return -ENOMEM;
	}

	return 0;
}