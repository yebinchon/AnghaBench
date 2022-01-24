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
typedef  int /*<<< orphan*/  u32 ;
struct pcie_port {int dummy; } ;
struct ls_pcie {int /*<<< orphan*/  index; int /*<<< orphan*/ * scfg; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct pcie_port*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct dw_pcie* FUNC6 (struct pcie_port*) ; 
 struct ls_pcie* FUNC7 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC8(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC6(pp);
	struct ls_pcie *pcie = FUNC7(pci);
	struct device *dev = pci->dev;
	u32 index[2];
	int ret;

	pcie->scfg = FUNC5(dev->of_node,
						     "fsl,pcie-scfg");
	if (FUNC0(pcie->scfg)) {
		ret = FUNC1(pcie->scfg);
		FUNC2(dev, "No syscfg phandle specified\n");
		pcie->scfg = NULL;
		return ret;
	}

	if (FUNC4(dev->of_node,
				       "fsl,pcie-scfg", index, 2)) {
		pcie->scfg = NULL;
		return -EINVAL;
	}
	pcie->index = index[1];

	return FUNC3(pp);
}