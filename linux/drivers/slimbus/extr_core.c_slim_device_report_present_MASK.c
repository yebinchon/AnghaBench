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
typedef  int /*<<< orphan*/  u8 ;
struct slim_eaddr {int dummy; } ;
struct slim_device {int /*<<< orphan*/  laddr; scalar_t__ is_laddr_valid; } ;
struct TYPE_2__ {scalar_t__ clk_state; } ;
struct slim_controller {int /*<<< orphan*/  dev; TYPE_1__ sched; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct slim_device*) ; 
 scalar_t__ SLIM_CLK_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct slim_device*,int) ; 
 struct slim_device* FUNC6 (struct slim_controller*,struct slim_eaddr*) ; 

int FUNC7(struct slim_controller *ctrl,
			       struct slim_eaddr *e_addr, u8 *laddr)
{
	struct slim_device *sbdev;
	int ret;

	ret = FUNC2(ctrl->dev);

	if (ctrl->sched.clk_state != SLIM_CLK_ACTIVE) {
		FUNC1(ctrl->dev, "slim ctrl not active,state:%d, ret:%d\n",
				    ctrl->sched.clk_state, ret);
		goto slimbus_not_active;
	}

	sbdev = FUNC6(ctrl, e_addr);
	if (FUNC0(sbdev))
		return -ENODEV;

	if (sbdev->is_laddr_valid) {
		*laddr = sbdev->laddr;
		return 0;
	}

	ret = FUNC5(sbdev, true);

slimbus_not_active:
	FUNC3(ctrl->dev);
	FUNC4(ctrl->dev);
	return ret;
}