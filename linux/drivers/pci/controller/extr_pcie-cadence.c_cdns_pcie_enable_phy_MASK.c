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
struct cdns_pcie {int phy_count; int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct cdns_pcie *pcie)
{
	int ret;
	int i;

	for (i = 0; i < pcie->phy_count; i++) {
		ret = FUNC1(pcie->phy[i]);
		if (ret < 0)
			goto err_phy;

		ret = FUNC3(pcie->phy[i]);
		if (ret < 0) {
			FUNC0(pcie->phy[i]);
			goto err_phy;
		}
	}

	return 0;

err_phy:
	while (--i >= 0) {
		FUNC2(pcie->phy[i]);
		FUNC0(pcie->phy[i]);
	}

	return ret;
}