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
struct wlandevice {struct hfa384x* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct hfa384x {TYPE_1__ ctlxq; int /*<<< orphan*/  usb_work; int /*<<< orphan*/  usb_flags; TYPE_2__* wlandev; } ;
struct TYPE_4__ {int /*<<< orphan*/  hwremoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_RX_HALT ; 
 int /*<<< orphan*/  WORK_TX_HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct wlandevice *wlandev)
{
	struct hfa384x *hw = wlandev->priv;
	unsigned long flags;

	FUNC1(&hw->ctlxq.lock, flags);

	if (!hw->wlandev->hwremoved) {
		int sched;

		sched = !FUNC3(WORK_TX_HALT, &hw->usb_flags);
		sched |= !FUNC3(WORK_RX_HALT, &hw->usb_flags);
		if (sched)
			FUNC0(&hw->usb_work);
	}

	FUNC2(&hw->ctlxq.lock, flags);
}