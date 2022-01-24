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
struct tegra_pcie_soc {scalar_t__ has_cml_clk; } ;
struct tegra_pcie {void* cml_clk; void* pll_e; void* afi_clk; void* pex_clk; struct tegra_pcie_soc* soc; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (struct device*,char*) ; 

__attribute__((used)) static int FUNC3(struct tegra_pcie *pcie)
{
	struct device *dev = pcie->dev;
	const struct tegra_pcie_soc *soc = pcie->soc;

	pcie->pex_clk = FUNC2(dev, "pex");
	if (FUNC0(pcie->pex_clk))
		return FUNC1(pcie->pex_clk);

	pcie->afi_clk = FUNC2(dev, "afi");
	if (FUNC0(pcie->afi_clk))
		return FUNC1(pcie->afi_clk);

	pcie->pll_e = FUNC2(dev, "pll_e");
	if (FUNC0(pcie->pll_e))
		return FUNC1(pcie->pll_e);

	if (soc->has_cml_clk) {
		pcie->cml_clk = FUNC2(dev, "cml");
		if (FUNC0(pcie->cml_clk))
			return FUNC1(pcie->cml_clk);
	}

	return 0;
}