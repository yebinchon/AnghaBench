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
typedef  int u32 ;
struct rx_ring {int /*<<< orphan*/  napi; struct ql_adapter* qdev; } ;
struct ql_adapter {int /*<<< orphan*/  ndev; int /*<<< orphan*/  mpi_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  hw_lock; struct intr_context* intr_context; } ;
struct intr_context {int irq_mask; int /*<<< orphan*/  intr; int /*<<< orphan*/  irq_cnt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_STS ; 
 int /*<<< orphan*/  INTR_MASK ; 
 int INTR_MASK_PI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISR1 ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int STS_FE ; 
 int STS_PI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ql_adapter*) ; 
 int FUNC9 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ql_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *dev_id)
{
	struct rx_ring *rx_ring = dev_id;
	struct ql_adapter *qdev = rx_ring->qdev;
	struct intr_context *intr_context = &qdev->intr_context[0];
	u32 var;
	int work_done = 0;

	FUNC13(&qdev->hw_lock);
	if (FUNC0(&qdev->intr_context[0].irq_cnt)) {
		FUNC5(qdev, intr, KERN_DEBUG, qdev->ndev,
			     "Shared Interrupt, Not ours!\n");
		FUNC14(&qdev->hw_lock);
		return IRQ_NONE;
	}
	FUNC14(&qdev->hw_lock);

	var = FUNC6(qdev, intr_context->intr);

	/*
	 * Check for fatal error.
	 */
	if (var & STS_FE) {
		FUNC8(qdev);
		FUNC2(qdev->ndev, "Got fatal error, STS = %x.\n", var);
		var = FUNC9(qdev, ERR_STS);
		FUNC2(qdev->ndev, "Resetting chip. "
					"Error Status Register = 0x%x\n", var);
		return IRQ_HANDLED;
	}

	/*
	 * Check MPI processor activity.
	 */
	if ((var & STS_PI) &&
		(FUNC9(qdev, INTR_MASK) & INTR_MASK_PI)) {
		/*
		 * We've got an async event or mailbox completion.
		 * Handle it and clear the source of the interrupt.
		 */
		FUNC3(qdev, intr, qdev->ndev,
			  "Got MPI processor interrupt.\n");
		FUNC6(qdev, intr_context->intr);
		FUNC10(qdev, INTR_MASK, (INTR_MASK_PI << 16));
		FUNC11(FUNC12(),
				qdev->workqueue, &qdev->mpi_work, 0);
		work_done++;
	}

	/*
	 * Get the bit-mask that shows the active queues for this
	 * pass.  Compare it to the queues that this irq services
	 * and call napi if there's a match.
	 */
	var = FUNC9(qdev, ISR1);
	if (var & intr_context->irq_mask) {
		FUNC4(qdev, intr, qdev->ndev,
			   "Waking handler for rx_ring[0].\n");
		FUNC6(qdev, intr_context->intr);
		FUNC1(&rx_ring->napi);
		work_done++;
	}
	FUNC7(qdev, intr_context->intr);
	return work_done ? IRQ_HANDLED : IRQ_NONE;
}