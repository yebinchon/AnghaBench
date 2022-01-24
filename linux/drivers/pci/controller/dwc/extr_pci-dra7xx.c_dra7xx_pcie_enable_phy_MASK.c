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
struct dra7xx_pcie {int phy_count; int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_MODE_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dra7xx_pcie *dra7xx)
{
	int phy_count = dra7xx->phy_count;
	int ret;
	int i;

	for (i = 0; i < phy_count; i++) {
		ret = FUNC4(dra7xx->phy[i], PHY_MODE_PCIE);
		if (ret < 0)
			goto err_phy;

		ret = FUNC1(dra7xx->phy[i]);
		if (ret < 0)
			goto err_phy;

		ret = FUNC3(dra7xx->phy[i]);
		if (ret < 0) {
			FUNC0(dra7xx->phy[i]);
			goto err_phy;
		}
	}

	return 0;

err_phy:
	while (--i >= 0) {
		FUNC2(dra7xx->phy[i]);
		FUNC0(dra7xx->phy[i]);
	}

	return ret;
}