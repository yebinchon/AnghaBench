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
struct timer_list {int dummy; } ;
struct hfa384x_usbctlx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active; } ;
struct hfa384x {int resp_timer_done; TYPE_1__ ctlxq; } ;

/* Variables and functions */
 struct hfa384x* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hfa384x_usbctlx* FUNC1 (struct hfa384x*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfa384x*) ; 
 struct hfa384x* hw ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resptimer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct hfa384x*,struct hfa384x_usbctlx*) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct hfa384x *hw = FUNC0(hw, t, resptimer);
	unsigned long flags;

	FUNC4(&hw->ctlxq.lock, flags);

	hw->resp_timer_done = 1;

	/* The active list will be empty if the
	 * adapter has been unplugged ...
	 */
	if (!FUNC3(&hw->ctlxq.active)) {
		struct hfa384x_usbctlx *ctlx = FUNC1(hw);

		if (FUNC6(hw, ctlx) == 0) {
			FUNC5(&hw->ctlxq.lock, flags);
			FUNC2(hw);
			return;
		}
	}
	FUNC5(&hw->ctlxq.lock, flags);
}