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
struct tegra_pcie_dw {int /*<<< orphan*/ * slot_ctl_12v; int /*<<< orphan*/  dev; int /*<<< orphan*/ * slot_ctl_3v3; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct tegra_pcie_dw *pcie)
{
	pcie->slot_ctl_3v3 = FUNC2(pcie->dev, "vpcie3v3");
	if (FUNC0(pcie->slot_ctl_3v3)) {
		if (FUNC1(pcie->slot_ctl_3v3) != -ENODEV)
			return FUNC1(pcie->slot_ctl_3v3);

		pcie->slot_ctl_3v3 = NULL;
	}

	pcie->slot_ctl_12v = FUNC2(pcie->dev, "vpcie12v");
	if (FUNC0(pcie->slot_ctl_12v)) {
		if (FUNC1(pcie->slot_ctl_12v) != -ENODEV)
			return FUNC1(pcie->slot_ctl_12v);

		pcie->slot_ctl_12v = NULL;
	}

	return 0;
}