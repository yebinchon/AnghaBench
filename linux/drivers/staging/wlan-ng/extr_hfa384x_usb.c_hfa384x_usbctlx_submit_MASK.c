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
struct hfa384x_usbctlx {int /*<<< orphan*/  list; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending; } ;
struct hfa384x {TYPE_2__ ctlxq; TYPE_1__* wlandev; } ;
struct TYPE_3__ {scalar_t__ hwremoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLX_PENDING ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct hfa384x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct hfa384x *hw,
				  struct hfa384x_usbctlx *ctlx)
{
	unsigned long flags;

	FUNC2(&hw->ctlxq.lock, flags);

	if (hw->wlandev->hwremoved) {
		FUNC3(&hw->ctlxq.lock, flags);
		return -ENODEV;
	}

	ctlx->state = CTLX_PENDING;
	FUNC1(&ctlx->list, &hw->ctlxq.pending);
	FUNC3(&hw->ctlxq.lock, flags);
	FUNC0(hw);

	return 0;
}