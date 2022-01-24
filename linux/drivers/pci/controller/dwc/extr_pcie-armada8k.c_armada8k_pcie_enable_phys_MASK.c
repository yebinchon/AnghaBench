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
struct armada8k_pcie {int /*<<< orphan*/ * phy; int /*<<< orphan*/  phy_count; } ;

/* Variables and functions */
 int ARMADA8K_PCIE_MAX_LANES ; 
 int /*<<< orphan*/  PHY_MODE_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct armada8k_pcie *pcie)
{
	int ret;
	int i;

	for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
		ret = FUNC1(pcie->phy[i]);
		if (ret)
			return ret;

		ret = FUNC3(pcie->phy[i], PHY_MODE_PCIE,
				       pcie->phy_count);
		if (ret) {
			FUNC0(pcie->phy[i]);
			return ret;
		}

		ret = FUNC2(pcie->phy[i]);
		if (ret) {
			FUNC0(pcie->phy[i]);
			return ret;
		}
	}

	return 0;
}