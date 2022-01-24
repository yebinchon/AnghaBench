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
struct tegra_pcie_dw {scalar_t__ slot_ctl_3v3; scalar_t__ slot_ctl_12v; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct tegra_pcie_dw *pcie)
{
	int ret;

	if (pcie->slot_ctl_3v3) {
		ret = FUNC3(pcie->slot_ctl_3v3);
		if (ret < 0) {
			FUNC0(pcie->dev,
				"Failed to enable 3.3V slot supply: %d\n", ret);
			return ret;
		}
	}

	if (pcie->slot_ctl_12v) {
		ret = FUNC3(pcie->slot_ctl_12v);
		if (ret < 0) {
			FUNC0(pcie->dev,
				"Failed to enable 12V slot supply: %d\n", ret);
			goto fail_12v_enable;
		}
	}

	/*
	 * According to PCI Express Card Electromechanical Specification
	 * Revision 1.1, Table-2.4, T_PVPERL (Power stable to PERST# inactive)
	 * should be a minimum of 100ms.
	 */
	if (pcie->slot_ctl_3v3 || pcie->slot_ctl_12v)
		FUNC1(100);

	return 0;

fail_12v_enable:
	if (pcie->slot_ctl_3v3)
		FUNC2(pcie->slot_ctl_3v3);
	return ret;
}