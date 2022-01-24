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
struct csio_hw {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  evtq_work; } ;

/* Variables and functions */
 int CSIO_HWF_FWEVT_PENDING ; 
 int FUNC0 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct csio_hw *hw)
{
	int rv;
	unsigned long flags;

	rv = FUNC0(hw);

	FUNC2(&hw->lock, flags);
	if (rv == 0 && !(hw->flags & CSIO_HWF_FWEVT_PENDING)) {
		hw->flags |= CSIO_HWF_FWEVT_PENDING;
		FUNC3(&hw->lock, flags);
		FUNC1(&hw->evtq_work);
		return;
	}
	FUNC3(&hw->lock, flags);

}