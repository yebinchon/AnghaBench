#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct hfa384x {TYPE_2__ ctlxq; int /*<<< orphan*/  usb_work; int /*<<< orphan*/  usb_flags; TYPE_1__* wlandev; } ;
struct TYPE_3__ {int /*<<< orphan*/  hwremoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  THROTTLE_RX ; 
 int /*<<< orphan*/  THROTTLE_TX ; 
 int /*<<< orphan*/  WORK_RX_RESUME ; 
 int /*<<< orphan*/  WORK_TX_RESUME ; 
 struct hfa384x* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hfa384x* hw ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  throttle ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct hfa384x *hw = FUNC0(hw, t, throttle);
	unsigned long flags;

	FUNC3(&hw->ctlxq.lock, flags);

	/*
	 * We need to check BOTH the RX and the TX throttle controls,
	 * so we use the bitwise OR instead of the logical OR.
	 */
	FUNC1("flags=0x%lx\n", hw->usb_flags);
	if (!hw->wlandev->hwremoved &&
	    ((FUNC5(THROTTLE_RX, &hw->usb_flags) &&
	      !FUNC6(WORK_RX_RESUME, &hw->usb_flags)) |
	     (FUNC5(THROTTLE_TX, &hw->usb_flags) &&
	      !FUNC6(WORK_TX_RESUME, &hw->usb_flags))
	    )) {
		FUNC2(&hw->usb_work);
	}

	FUNC4(&hw->ctlxq.lock, flags);
}