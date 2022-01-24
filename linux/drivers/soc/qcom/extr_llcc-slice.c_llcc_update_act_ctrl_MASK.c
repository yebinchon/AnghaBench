#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  bcast_regmap; } ;

/* Variables and functions */
 int ACT_CTRL_ACT_TRIG ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  LLCC_STATUS_READ_DELAY ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*) ; 
 TYPE_1__* drv_data ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(u32 sid,
				u32 act_ctrl_reg_val, u32 status)
{
	u32 act_ctrl_reg;
	u32 status_reg;
	u32 slice_status;
	int ret;

	if (FUNC0(drv_data))
		return FUNC3(drv_data);

	act_ctrl_reg = FUNC1(sid);
	status_reg = FUNC2(sid);

	/* Set the ACTIVE trigger */
	act_ctrl_reg_val |= ACT_CTRL_ACT_TRIG;
	ret = FUNC5(drv_data->bcast_regmap, act_ctrl_reg,
				act_ctrl_reg_val);
	if (ret)
		return ret;

	/* Clear the ACTIVE trigger */
	act_ctrl_reg_val &= ~ACT_CTRL_ACT_TRIG;
	ret = FUNC5(drv_data->bcast_regmap, act_ctrl_reg,
				act_ctrl_reg_val);
	if (ret)
		return ret;

	ret = FUNC4(drv_data->bcast_regmap, status_reg,
				      slice_status, !(slice_status & status),
				      0, LLCC_STATUS_READ_DELAY);
	return ret;
}