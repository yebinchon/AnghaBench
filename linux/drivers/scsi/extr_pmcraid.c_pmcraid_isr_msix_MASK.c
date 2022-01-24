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
typedef  int u32 ;
struct pmcraid_isr_param {int hrrq_id; struct pmcraid_instance* drv_inst; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_ioa_interrupt_reg; } ;
struct pmcraid_instance {int ioa_unit_check; int /*<<< orphan*/ * isr_tasklet; TYPE_2__ int_regs; TYPE_1__* host; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int DOORBELL_INTR_MSIX_CLR ; 
 int INTRS_IOA_UNIT_CHECK ; 
 int INTRS_TRANSITION_TO_OPERATIONAL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PMCRAID_ERROR_INTERRUPTS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pmcraid_instance*) ; 
 int FUNC5 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct pmcraid_isr_param *hrrq_vector;
	struct pmcraid_instance *pinstance;
	unsigned long lock_flags;
	u32 intrs_val;
	int hrrq_id;

	hrrq_vector = (struct pmcraid_isr_param *)dev_id;
	hrrq_id = hrrq_vector->hrrq_id;
	pinstance = hrrq_vector->drv_inst;

	if (!hrrq_id) {
		/* Read the interrupt */
		intrs_val = FUNC5(pinstance);
		if (intrs_val &&
			((FUNC0(pinstance->int_regs.host_ioa_interrupt_reg)
			& DOORBELL_INTR_MSIX_CLR) == 0)) {
			/* Any error interrupts including unit_check,
			 * initiate IOA reset.In case of unit check indicate
			 * to reset_sequence that IOA unit checked and prepare
			 * for a dump during reset sequence
			 */
			if (intrs_val & PMCRAID_ERROR_INTERRUPTS) {
				if (intrs_val & INTRS_IOA_UNIT_CHECK)
					pinstance->ioa_unit_check = 1;

				FUNC3("ISR: error interrupts: %x \
					initiating reset\n", intrs_val);
				FUNC6(pinstance->host->host_lock,
					lock_flags);
				FUNC4(pinstance);
				FUNC7(
					pinstance->host->host_lock,
					lock_flags);
			}
			/* If interrupt was as part of the ioa initialization,
			 * clear it. Delete the timer and wakeup the
			 * reset engine to proceed with reset sequence
			 */
			if (intrs_val & INTRS_TRANSITION_TO_OPERATIONAL)
				FUNC2(pinstance);

			/* Clear the interrupt register by writing
			 * to host to ioa doorbell. Once done
			 * FW will clear the interrupt.
			 */
			FUNC1(DOORBELL_INTR_MSIX_CLR,
				pinstance->int_regs.host_ioa_interrupt_reg);
			FUNC0(pinstance->int_regs.host_ioa_interrupt_reg);


		}
	}

	FUNC8(&(pinstance->isr_tasklet[hrrq_id]));

	return IRQ_HANDLED;
}