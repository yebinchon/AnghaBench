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
struct ufs_qcom_phy {int quirks; scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ QSERDES_COM_SYSCLK_EN_SEL_TXBAND ; 
 scalar_t__ UFS_PHY_POWER_DOWN_CONTROL ; 
 int UFS_QCOM_PHY_QUIRK_HIBERN8_EXIT_AFTER_PHY_PWR_COLLAPSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static
void FUNC3(struct ufs_qcom_phy *phy, bool val)
{
	bool hibern8_exit_after_pwr_collapse = phy->quirks &
		UFS_QCOM_PHY_QUIRK_HIBERN8_EXIT_AFTER_PHY_PWR_COLLAPSE;

	if (val) {
		FUNC2(0x1, phy->mmio + UFS_PHY_POWER_DOWN_CONTROL);
		/*
		 * Before any transactions involving PHY, ensure PHY knows
		 * that it's analog rail is powered ON.
		 */
		FUNC0();

		if (hibern8_exit_after_pwr_collapse) {
			/*
			 * Give atleast 1us delay after restoring PHY analog
			 * power.
			 */
			FUNC1(1, 2);
			FUNC2(0x0A, phy->mmio +
				       QSERDES_COM_SYSCLK_EN_SEL_TXBAND);
			FUNC2(0x08, phy->mmio +
				       QSERDES_COM_SYSCLK_EN_SEL_TXBAND);
			/*
			 * Make sure workaround is deactivated before proceeding
			 * with normal PHY operations.
			 */
			FUNC0();
		}
	} else {
		if (hibern8_exit_after_pwr_collapse) {
			FUNC2(0x0A, phy->mmio +
				       QSERDES_COM_SYSCLK_EN_SEL_TXBAND);
			FUNC2(0x02, phy->mmio +
				       QSERDES_COM_SYSCLK_EN_SEL_TXBAND);
			/*
			 * Make sure that above workaround is activated before
			 * PHY analog power collapse.
			 */
			FUNC0();
		}

		FUNC2(0x0, phy->mmio + UFS_PHY_POWER_DOWN_CONTROL);
		/*
		 * ensure that PHY knows its PHY analog rail is going
		 * to be powered down
		 */
		FUNC0();
	}
}