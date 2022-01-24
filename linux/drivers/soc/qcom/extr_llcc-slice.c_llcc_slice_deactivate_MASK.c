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
struct llcc_slice_desc {int /*<<< orphan*/  slice_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATE ; 
 int ACT_CTRL_OPCODE_DEACTIVATE ; 
 int ACT_CTRL_OPCODE_SHIFT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct llcc_slice_desc*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* drv_data ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct llcc_slice_desc *desc)
{
	u32 act_ctrl_val;
	int ret;

	if (FUNC0(drv_data))
		return FUNC2(drv_data);

	if (FUNC1(desc))
		return -EINVAL;

	FUNC5(&drv_data->lock);
	if (!FUNC7(desc->slice_id, drv_data->bitmap)) {
		FUNC6(&drv_data->lock);
		return 0;
	}
	act_ctrl_val = ACT_CTRL_OPCODE_DEACTIVATE << ACT_CTRL_OPCODE_SHIFT;

	ret = FUNC4(desc->slice_id, act_ctrl_val,
				  ACTIVATE);
	if (ret) {
		FUNC6(&drv_data->lock);
		return ret;
	}

	FUNC3(desc->slice_id, drv_data->bitmap);
	FUNC6(&drv_data->lock);

	return ret;
}