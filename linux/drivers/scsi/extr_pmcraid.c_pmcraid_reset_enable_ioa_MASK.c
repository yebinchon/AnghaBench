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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ioa_host_interrupt_clr_reg; int /*<<< orphan*/  ioa_host_interrupt_mask_reg; } ;
struct pmcraid_instance {TYPE_1__ int_regs; int /*<<< orphan*/  interrupt_mode; } ;

/* Variables and functions */
 int INTRS_TRANSITION_TO_OPERATIONAL ; 
 int /*<<< orphan*/  PMCRAID_PCI_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmcraid_instance*) ; 

__attribute__((used)) static int FUNC4(struct pmcraid_instance *pinstance)
{
	u32 intrs;

	FUNC3(pinstance);
	intrs = FUNC2(pinstance);

	FUNC1(pinstance, PMCRAID_PCI_INTERRUPTS);

	if (intrs & INTRS_TRANSITION_TO_OPERATIONAL) {
		if (!pinstance->interrupt_mode) {
			FUNC0(INTRS_TRANSITION_TO_OPERATIONAL,
				pinstance->int_regs.
				ioa_host_interrupt_mask_reg);
			FUNC0(INTRS_TRANSITION_TO_OPERATIONAL,
				pinstance->int_regs.ioa_host_interrupt_clr_reg);
		}
		return 1;
	} else {
		return 0;
	}
}