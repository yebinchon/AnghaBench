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
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct dw_pcie* FUNC3 (struct pcie_port*) ; 

__attribute__((used)) static int FUNC4(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC3(pp);
	struct device *dev = pci->dev;
	struct device_node *np = dev->of_node;
	struct device_node *msi_node;

	/*
	 * The MSI domain is set by the generic of_msi_configure().  This
	 * .msi_host_init() function keeps us from doing the default MSI
	 * domain setup in dw_pcie_host_init() and also enforces the
	 * requirement that "msi-parent" exists.
	 */
	msi_node = FUNC2(np, "msi-parent", 0);
	if (!msi_node) {
		FUNC0(dev, "failed to find msi-parent\n");
		return -EINVAL;
	}

	FUNC1(msi_node);
	return 0;
}