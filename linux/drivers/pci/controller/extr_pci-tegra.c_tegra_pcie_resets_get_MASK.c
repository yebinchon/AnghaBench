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
struct tegra_pcie {void* pcie_xrst; void* afi_rst; void* pex_rst; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (struct device*,char*) ; 

__attribute__((used)) static int FUNC3(struct tegra_pcie *pcie)
{
	struct device *dev = pcie->dev;

	pcie->pex_rst = FUNC2(dev, "pex");
	if (FUNC0(pcie->pex_rst))
		return FUNC1(pcie->pex_rst);

	pcie->afi_rst = FUNC2(dev, "afi");
	if (FUNC0(pcie->afi_rst))
		return FUNC1(pcie->afi_rst);

	pcie->pcie_xrst = FUNC2(dev, "pcie_x");
	if (FUNC0(pcie->pcie_xrst))
		return FUNC1(pcie->pcie_xrst);

	return 0;
}