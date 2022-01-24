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
struct ti_pipe3 {int /*<<< orphan*/  power_reg; int /*<<< orphan*/  phy_power_syscon; int /*<<< orphan*/  control_dev; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIPE3_PHY_PWRCTL_CLK_CMD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_pipe3* FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy *x)
{
	int ret;
	struct ti_pipe3 *phy = FUNC1(x);

	if (!phy->phy_power_syscon) {
		FUNC0(phy->control_dev, 0);
		return 0;
	}

	ret = FUNC2(phy->phy_power_syscon, phy->power_reg,
				 PIPE3_PHY_PWRCTL_CLK_CMD_MASK, 0);
	return ret;
}