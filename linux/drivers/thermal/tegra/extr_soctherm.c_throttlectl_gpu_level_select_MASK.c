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
struct tegra_soctherm {scalar_t__ regs; TYPE_1__* throt_cfgs; } ;
typedef  enum soctherm_throttle_id { ____Placeholder_soctherm_throttle_id } soctherm_throttle_id ;
struct TYPE_2__ {int gpu_throt_level; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THROTTLE_DEV_GPU ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THROT_PSKIP_CTRL_ENABLE_MASK ; 
 int /*<<< orphan*/  THROT_PSKIP_CTRL_VECT_GPU_MASK ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tegra_soctherm *ts,
					 enum soctherm_throttle_id throt)
{
	u32 r, level, throt_vect;

	level = ts->throt_cfgs[throt].gpu_throt_level;
	throt_vect = FUNC1(level);
	r = FUNC3(ts->regs + FUNC2(throt, THROTTLE_DEV_GPU));
	r = FUNC0(r, THROT_PSKIP_CTRL_ENABLE_MASK, 1);
	r = FUNC0(r, THROT_PSKIP_CTRL_VECT_GPU_MASK, throt_vect);
	FUNC4(r, ts->regs + FUNC2(throt, THROTTLE_DEV_GPU));
}