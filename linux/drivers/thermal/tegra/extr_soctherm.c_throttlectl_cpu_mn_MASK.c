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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct tegra_soctherm {scalar_t__ regs; TYPE_1__* throt_cfgs; } ;
typedef  enum soctherm_throttle_id { ____Placeholder_soctherm_throttle_id } soctherm_throttle_id ;
struct TYPE_2__ {int cpu_throt_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THROTTLE_DEV_CPU ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THROT_PSKIP_CTRL_DIVIDEND_MASK ; 
 int /*<<< orphan*/  THROT_PSKIP_CTRL_DIVISOR_MASK ; 
 int /*<<< orphan*/  THROT_PSKIP_CTRL_ENABLE_MASK ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THROT_PSKIP_RAMP_DURATION_MASK ; 
 int /*<<< orphan*/  THROT_PSKIP_RAMP_STEP_MASK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct tegra_soctherm *ts,
			       enum soctherm_throttle_id throt)
{
	u32 r;
	int depth;
	u8 dividend;

	depth = ts->throt_cfgs[throt].cpu_throt_depth;
	dividend = FUNC1(depth);

	r = FUNC4(ts->regs + FUNC2(throt, THROTTLE_DEV_CPU));
	r = FUNC0(r, THROT_PSKIP_CTRL_ENABLE_MASK, 1);
	r = FUNC0(r, THROT_PSKIP_CTRL_DIVIDEND_MASK, dividend);
	r = FUNC0(r, THROT_PSKIP_CTRL_DIVISOR_MASK, 0xff);
	FUNC5(r, ts->regs + FUNC2(throt, THROTTLE_DEV_CPU));

	r = FUNC4(ts->regs + FUNC3(throt, THROTTLE_DEV_CPU));
	r = FUNC0(r, THROT_PSKIP_RAMP_DURATION_MASK, 0xff);
	r = FUNC0(r, THROT_PSKIP_RAMP_STEP_MASK, 0xf);
	FUNC5(r, ts->regs + FUNC3(throt, THROTTLE_DEV_CPU));
}