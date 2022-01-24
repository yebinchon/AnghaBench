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
struct isci_host {int /*<<< orphan*/  scic_lock; int /*<<< orphan*/  completion_tasklet; TYPE_1__* smu_registers; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  interrupt_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SMU_ISR_COMPLETION ; 
 int /*<<< orphan*/  FUNC0 (struct isci_host*) ; 
 scalar_t__ FUNC1 (struct isci_host*) ; 
 scalar_t__ FUNC2 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC7(int vec, void *data)
{
	irqreturn_t ret = IRQ_NONE;
	struct isci_host *ihost = data;

	if (FUNC2(ihost)) {
		FUNC6(SMU_ISR_COMPLETION, &ihost->smu_registers->interrupt_status);
		FUNC5(&ihost->completion_tasklet);
		ret = IRQ_HANDLED;
	} else if (FUNC1(ihost)) {
		FUNC3(&ihost->scic_lock);
		FUNC0(ihost);
		FUNC4(&ihost->scic_lock);
		ret = IRQ_HANDLED;
	}

	return ret;
}