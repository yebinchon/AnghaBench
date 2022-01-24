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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct tegra_soctherm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CCROC_THROT_PSKIP_CTRL_DIVIDEND_MASK ; 
 int /*<<< orphan*/  CCROC_THROT_PSKIP_CTRL_DIVISOR_MASK ; 
 int /*<<< orphan*/  CCROC_THROT_PSKIP_CTRL_ENB_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CCROC_THROT_PSKIP_RAMP_DURATION_MASK ; 
 int /*<<< orphan*/  CCROC_THROT_PSKIP_RAMP_STEP_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  TEGRA_SOCTHERM_THROT_LEVEL_HIGH 131 
#define  TEGRA_SOCTHERM_THROT_LEVEL_LOW 130 
#define  TEGRA_SOCTHERM_THROT_LEVEL_MED 129 
#define  TEGRA_SOCTHERM_THROT_LEVEL_NONE 128 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_soctherm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_soctherm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tegra_soctherm *ts, int level)
{
	u8 depth, dividend;
	u32 r;

	switch (level) {
	case TEGRA_SOCTHERM_THROT_LEVEL_LOW:
		depth = 50;
		break;
	case TEGRA_SOCTHERM_THROT_LEVEL_MED:
		depth = 75;
		break;
	case TEGRA_SOCTHERM_THROT_LEVEL_HIGH:
		depth = 80;
		break;
	case TEGRA_SOCTHERM_THROT_LEVEL_NONE:
		return;
	default:
		return;
	}

	dividend = FUNC3(depth);

	/* setup PSKIP in ccroc nv_therm registers */
	r = FUNC4(ts, FUNC1(level));
	r = FUNC2(r, CCROC_THROT_PSKIP_RAMP_DURATION_MASK, 0xff);
	r = FUNC2(r, CCROC_THROT_PSKIP_RAMP_STEP_MASK, 0xf);
	FUNC5(ts, r, FUNC1(level));

	r = FUNC4(ts, FUNC0(level));
	r = FUNC2(r, CCROC_THROT_PSKIP_CTRL_ENB_MASK, 1);
	r = FUNC2(r, CCROC_THROT_PSKIP_CTRL_DIVIDEND_MASK, dividend);
	r = FUNC2(r, CCROC_THROT_PSKIP_CTRL_DIVISOR_MASK, 0xff);
	FUNC5(ts, r, FUNC0(level));
}