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
struct tegra_pcie_dw {unsigned int phy_count; int /*<<< orphan*/ * phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tegra_pcie_dw *pcie)
{
	unsigned int i;
	int ret;

	for (i = 0; i < pcie->phy_count; i++) {
		ret = FUNC1(pcie->phys[i]);
		if (ret < 0)
			goto phy_power_off;

		ret = FUNC3(pcie->phys[i]);
		if (ret < 0)
			goto phy_exit;
	}

	return 0;

phy_power_off:
	while (i--) {
		FUNC2(pcie->phys[i]);
phy_exit:
		FUNC0(pcie->phys[i]);
	}

	return ret;
}