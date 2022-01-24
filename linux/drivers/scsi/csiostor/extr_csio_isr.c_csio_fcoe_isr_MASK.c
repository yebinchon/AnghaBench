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
struct csio_q {int dummy; } ;
struct csio_hw {scalar_t__ intr_mode; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  evtq_work; int /*<<< orphan*/  intr_iq_idx; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_q*) ; 
 int CSIO_HWF_FWEVT_PENDING ; 
 scalar_t__ CSIO_IM_INTX ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_PF_CLI_A ; 
 struct csio_q* FUNC3 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct csio_hw*) ; 
 int FUNC5 (struct csio_hw*) ; 
 scalar_t__ FUNC6 (struct csio_hw*,struct csio_q*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  n_pcich_offline ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC14(int irq, void *dev_id)
{
	struct csio_hw *hw = (struct csio_hw *) dev_id;
	struct csio_q *intx_q = NULL;
	int rv;
	irqreturn_t ret = IRQ_NONE;
	unsigned long flags;

	if (FUNC13(!hw))
		return IRQ_NONE;

	if (FUNC13(FUNC9(hw->pdev))) {
		FUNC1(hw, n_pcich_offline);
		return IRQ_NONE;
	}

	/* Disable the interrupt for this PCI function. */
	if (hw->intr_mode == CSIO_IM_INTX)
		FUNC7(hw, 0, FUNC2(PCIE_PF_CLI_A));

	/*
	 * The read in the following function will flush the
	 * above write.
	 */
	if (FUNC4(hw))
		ret = IRQ_HANDLED;

	/* Get the INTx Forward interrupt IQ. */
	intx_q = FUNC3(hw, hw->intr_iq_idx);

	FUNC0(intx_q);

	/* IQ handler is not possible for intx_q, hence pass in NULL */
	if (FUNC8(FUNC6(hw, intx_q, NULL, NULL) == 0))
		ret = IRQ_HANDLED;

	FUNC11(&hw->lock, flags);
	rv = FUNC5(hw);
	if (rv == 0 && !(hw->flags & CSIO_HWF_FWEVT_PENDING)) {
		hw->flags |= CSIO_HWF_FWEVT_PENDING;
		FUNC12(&hw->lock, flags);
		FUNC10(&hw->evtq_work);
		return IRQ_HANDLED;
	}
	FUNC12(&hw->lock, flags);

	return ret;
}