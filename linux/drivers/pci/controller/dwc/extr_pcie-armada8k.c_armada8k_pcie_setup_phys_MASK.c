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
struct dw_pcie {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct armada8k_pcie {int /*<<< orphan*/  phy_count; int /*<<< orphan*/ ** phy; struct dw_pcie* pci; } ;

/* Variables and functions */
 int ARMADA8K_PCIE_MAX_LANES ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct armada8k_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,struct device_node*,int) ; 

__attribute__((used)) static int FUNC6(struct armada8k_pcie *pcie)
{
	struct dw_pcie *pci = pcie->pci;
	struct device *dev = pci->dev;
	struct device_node *node = dev->of_node;
	int ret = 0;
	int i;

	for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
		pcie->phy[i] = FUNC5(dev, node, i);
		if (FUNC0(pcie->phy[i])) {
			if (FUNC1(pcie->phy[i]) != -ENODEV)
				return FUNC1(pcie->phy[i]);

			pcie->phy[i] = NULL;
			continue;
		}

		pcie->phy_count++;
	}

	/* Old bindings miss the PHY handle, so just warn if there is no PHY */
	if (!pcie->phy_count)
		FUNC4(dev, "No available PHY\n");

	ret = FUNC2(pcie);
	if (ret)
		FUNC3(dev, "Failed to initialize PHY(s) (%d)\n", ret);

	return ret;
}