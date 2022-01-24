#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct phy {int dummy; } ;
struct exynos_dp_video_phy {TYPE_1__* drvdata; int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_ctrl_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS4_PHY_ENABLE ; 
 struct exynos_dp_video_phy* FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct exynos_dp_video_phy *state = FUNC0(phy);

	/* Enable power isolation on DP-PHY */
	return FUNC1(state->regs, state->drvdata->phy_ctrl_offset,
				  EXYNOS4_PHY_ENABLE, 0);
}