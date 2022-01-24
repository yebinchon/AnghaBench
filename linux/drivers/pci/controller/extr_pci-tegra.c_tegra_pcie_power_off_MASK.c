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
struct tegra_pcie {int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; int /*<<< orphan*/  afi_clk; int /*<<< orphan*/  cml_clk; int /*<<< orphan*/  pll_e; int /*<<< orphan*/  afi_rst; struct tegra_pcie_soc* soc; struct device* dev; } ;
struct device {int /*<<< orphan*/  pm_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_POWERGATE_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tegra_pcie *pcie)
{
	struct device *dev = pcie->dev;
	const struct tegra_pcie_soc *soc = pcie->soc;
	int err;

	FUNC3(pcie->afi_rst);

	FUNC0(pcie->pll_e);
	if (soc->has_cml_clk)
		FUNC0(pcie->cml_clk);
	FUNC0(pcie->afi_clk);

	if (!dev->pm_domain)
		FUNC4(TEGRA_POWERGATE_PCIE);

	err = FUNC2(pcie->num_supplies, pcie->supplies);
	if (err < 0)
		FUNC1(dev, "failed to disable regulators: %d\n", err);
}