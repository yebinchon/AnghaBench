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

/* Variables and functions */
 int CHAN_PLAN_HW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

u8 FUNC1(u8 hw_channel_plan, u8 sw_channel_plan,
			    u8 def_channel_plan, bool load_fail)
{
	u8 sw_cfg;
	u8 chnlplan;

	sw_cfg = true;
	if (!load_fail) {
		if (!FUNC0(sw_channel_plan))
			sw_cfg = false;
		if (hw_channel_plan & CHAN_PLAN_HW)
			sw_cfg = false;
	}

	if (sw_cfg)
		chnlplan = sw_channel_plan;
	else
		chnlplan = hw_channel_plan & (~CHAN_PLAN_HW);

	if (!FUNC0(chnlplan))
		chnlplan = def_channel_plan;

	return chnlplan;
}