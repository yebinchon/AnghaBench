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
struct tegra_pcie_dw {int /*<<< orphan*/  cid; int /*<<< orphan*/  dev; int /*<<< orphan*/  pex_ctl_supply; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  core_apb_rst; int /*<<< orphan*/  core_rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tegra_pcie_dw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_pcie_dw*) ; 

__attribute__((used)) static int FUNC7(struct tegra_pcie_dw *pcie)
{
	int ret;

	ret = FUNC3(pcie->core_rst);
	if (ret) {
		FUNC1(pcie->dev, "Failed to assert \"core\" reset: %d\n",
			ret);
		return ret;
	}

	FUNC5(pcie);

	ret = FUNC3(pcie->core_apb_rst);
	if (ret) {
		FUNC1(pcie->dev, "Failed to assert APB reset: %d\n", ret);
		return ret;
	}

	FUNC0(pcie->core_clk);

	ret = FUNC2(pcie->pex_ctl_supply);
	if (ret) {
		FUNC1(pcie->dev, "Failed to disable regulator: %d\n", ret);
		return ret;
	}

	FUNC6(pcie);

	ret = FUNC4(pcie, false);
	if (ret) {
		FUNC1(pcie->dev, "Failed to disable controller %d: %d\n",
			pcie->cid, ret);
		return ret;
	}

	return ret;
}