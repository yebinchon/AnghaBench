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
struct tegra_pcie {int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; int /*<<< orphan*/  afi_clk; int /*<<< orphan*/  cml_clk; int /*<<< orphan*/  afi_rst; int /*<<< orphan*/  pll_e; int /*<<< orphan*/  pex_rst; int /*<<< orphan*/  pcie_xrst; struct tegra_pcie_soc* soc; struct device* dev; } ;
struct device {int /*<<< orphan*/  pm_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_POWERGATE_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct tegra_pcie *pcie)
{
	struct device *dev = pcie->dev;
	const struct tegra_pcie_soc *soc = pcie->soc;
	int err;

	FUNC5(pcie->pcie_xrst);
	FUNC5(pcie->afi_rst);
	FUNC5(pcie->pex_rst);

	if (!dev->pm_domain)
		FUNC7(TEGRA_POWERGATE_PCIE);

	/* enable regulators */
	err = FUNC4(pcie->num_supplies, pcie->supplies);
	if (err < 0)
		FUNC2(dev, "failed to enable regulators: %d\n", err);

	if (!dev->pm_domain) {
		err = FUNC8(TEGRA_POWERGATE_PCIE);
		if (err) {
			FUNC2(dev, "failed to power ungate: %d\n", err);
			goto regulator_disable;
		}
		err = FUNC9(TEGRA_POWERGATE_PCIE);
		if (err) {
			FUNC2(dev, "failed to remove clamp: %d\n", err);
			goto powergate;
		}
	}

	err = FUNC1(pcie->afi_clk);
	if (err < 0) {
		FUNC2(dev, "failed to enable AFI clock: %d\n", err);
		goto powergate;
	}

	if (soc->has_cml_clk) {
		err = FUNC1(pcie->cml_clk);
		if (err < 0) {
			FUNC2(dev, "failed to enable CML clock: %d\n", err);
			goto disable_afi_clk;
		}
	}

	err = FUNC1(pcie->pll_e);
	if (err < 0) {
		FUNC2(dev, "failed to enable PLLE clock: %d\n", err);
		goto disable_cml_clk;
	}

	FUNC6(pcie->afi_rst);

	return 0;

disable_cml_clk:
	if (soc->has_cml_clk)
		FUNC0(pcie->cml_clk);
disable_afi_clk:
	FUNC0(pcie->afi_clk);
powergate:
	if (!dev->pm_domain)
		FUNC7(TEGRA_POWERGATE_PCIE);
regulator_disable:
	FUNC3(pcie->num_supplies, pcie->supplies);

	return err;
}