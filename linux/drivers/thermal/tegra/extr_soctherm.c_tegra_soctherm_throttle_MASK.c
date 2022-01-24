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
typedef  int u32 ;
struct tegra_soctherm {scalar_t__ regs; scalar_t__ clk_regs; TYPE_1__* soc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_ccroc; } ;

/* Variables and functions */
 scalar_t__ CAR_SUPER_CCLKG_DIVIDER ; 
 int /*<<< orphan*/  CCROC_GLOBAL_CFG ; 
 int /*<<< orphan*/  CCROC_SUPER_CCLKG_DIVIDER ; 
 int /*<<< orphan*/  CDIVG_USE_THERM_CONTROLS_MASK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int STATS_CTL_CLR_DN ; 
 int STATS_CTL_CLR_UP ; 
 int STATS_CTL_EN_DN ; 
 int STATS_CTL_EN_UP ; 
 int /*<<< orphan*/  TEGRA_SOCTHERM_THROT_LEVEL_HIGH ; 
 int /*<<< orphan*/  TEGRA_SOCTHERM_THROT_LEVEL_LOW ; 
 int /*<<< orphan*/  TEGRA_SOCTHERM_THROT_LEVEL_MED ; 
 scalar_t__ THERMCTL_STATS_CTL ; 
 int THROTTLE_SIZE ; 
 scalar_t__ THROT_GLOBAL_CFG ; 
 int /*<<< orphan*/  THROT_GLOBAL_ENB_MASK ; 
 int FUNC1 (struct tegra_soctherm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_soctherm*,int,int /*<<< orphan*/ ) ; 
 struct tegra_soctherm* FUNC3 (struct device*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_soctherm*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_soctherm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct device *dev)
{
	struct tegra_soctherm *ts = FUNC3(dev);
	u32 v;
	int i;

	/* configure LOW, MED and HIGH levels for CCROC NV_THERM */
	if (ts->soc->use_ccroc) {
		FUNC6(ts, TEGRA_SOCTHERM_THROT_LEVEL_LOW);
		FUNC6(ts, TEGRA_SOCTHERM_THROT_LEVEL_MED);
		FUNC6(ts, TEGRA_SOCTHERM_THROT_LEVEL_HIGH);
	}

	/* Thermal HW throttle programming */
	for (i = 0; i < THROTTLE_SIZE; i++)
		FUNC5(ts, i);

	v = FUNC0(0, THROT_GLOBAL_ENB_MASK, 1);
	if (ts->soc->use_ccroc) {
		FUNC2(ts, v, CCROC_GLOBAL_CFG);

		v = FUNC1(ts, CCROC_SUPER_CCLKG_DIVIDER);
		v = FUNC0(v, CDIVG_USE_THERM_CONTROLS_MASK, 1);
		FUNC2(ts, v, CCROC_SUPER_CCLKG_DIVIDER);
	} else {
		FUNC7(v, ts->regs + THROT_GLOBAL_CFG);

		v = FUNC4(ts->clk_regs + CAR_SUPER_CCLKG_DIVIDER);
		v = FUNC0(v, CDIVG_USE_THERM_CONTROLS_MASK, 1);
		FUNC7(v, ts->clk_regs + CAR_SUPER_CCLKG_DIVIDER);
	}

	/* initialize stats collection */
	v = STATS_CTL_CLR_DN | STATS_CTL_EN_DN |
	    STATS_CTL_CLR_UP | STATS_CTL_EN_UP;
	FUNC7(v, ts->regs + THERMCTL_STATS_CTL);
}