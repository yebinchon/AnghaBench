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
struct tegra_pcie {int legacy_phy; int /*<<< orphan*/  phy; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tegra_pcie *pcie)
{
	struct device *dev = pcie->dev;
	int err;

	pcie->phy = FUNC3(dev, "pcie");
	if (FUNC0(pcie->phy)) {
		err = FUNC1(pcie->phy);
		FUNC2(dev, "failed to get PHY: %d\n", err);
		return err;
	}

	err = FUNC4(pcie->phy);
	if (err < 0) {
		FUNC2(dev, "failed to initialize PHY: %d\n", err);
		return err;
	}

	pcie->legacy_phy = true;

	return 0;
}