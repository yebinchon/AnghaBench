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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dw_plat_pcie {struct dw_pcie* pci; } ;
struct dw_pcie_ep {int /*<<< orphan*/  addr_size; int /*<<< orphan*/  phys_base; int /*<<< orphan*/ * ops; } ;
struct dw_pcie {int /*<<< orphan*/  dbi_base2; struct dw_pcie_ep ep; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 int FUNC4 (struct dw_pcie_ep*) ; 
 int /*<<< orphan*/  pcie_ep_ops ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 

__attribute__((used)) static int FUNC7(struct dw_plat_pcie *dw_plat_pcie,
			       struct platform_device *pdev)
{
	int ret;
	struct dw_pcie_ep *ep;
	struct resource *res;
	struct device *dev = &pdev->dev;
	struct dw_pcie *pci = dw_plat_pcie->pci;

	ep = &pci->ep;
	ep->ops = &pcie_ep_ops;

	res = FUNC5(pdev, IORESOURCE_MEM, "dbi2");
	pci->dbi_base2 = FUNC3(dev, res);
	if (FUNC0(pci->dbi_base2))
		return FUNC1(pci->dbi_base2);

	res = FUNC5(pdev, IORESOURCE_MEM, "addr_space");
	if (!res)
		return -EINVAL;

	ep->phys_base = res->start;
	ep->addr_size = FUNC6(res);

	ret = FUNC4(ep);
	if (ret) {
		FUNC2(dev, "Failed to initialize endpoint\n");
		return ret;
	}
	return 0;
}