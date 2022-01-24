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
struct csio_hw {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  evtq_work; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CSIO_HWF_FWEVT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  n_pcich_offline ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC8(int irq, void *dev_id)
{
	struct csio_hw *hw = (struct csio_hw *) dev_id;
	int rv;
	unsigned long flags;

	if (FUNC7(!hw))
		return IRQ_NONE;

	if (FUNC7(FUNC3(hw->pdev))) {
		FUNC0(hw, n_pcich_offline);
		return IRQ_NONE;
	}

	FUNC5(&hw->lock, flags);
	FUNC1(hw);
	rv = FUNC2(hw);

	if (rv == 0 && !(hw->flags & CSIO_HWF_FWEVT_PENDING)) {
		hw->flags |= CSIO_HWF_FWEVT_PENDING;
		FUNC6(&hw->lock, flags);
		FUNC4(&hw->evtq_work);
		return IRQ_HANDLED;
	}
	FUNC6(&hw->lock, flags);
	return IRQ_HANDLED;
}