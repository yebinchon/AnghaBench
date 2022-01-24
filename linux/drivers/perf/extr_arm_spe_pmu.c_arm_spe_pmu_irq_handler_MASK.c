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
struct perf_output_handle {int aux_flags; struct perf_event* event; } ;
struct perf_event {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum arm_spe_pmu_buf_fault_action { ____Placeholder_arm_spe_pmu_buf_fault_action } arm_spe_pmu_buf_fault_action ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int PERF_AUX_FLAG_TRUNCATED ; 
#define  SPE_PMU_BUF_FAULT_ACT_FATAL 130 
#define  SPE_PMU_BUF_FAULT_ACT_OK 129 
#define  SPE_PMU_BUF_FAULT_ACT_SPURIOUS 128 
 int /*<<< orphan*/  SYS_PMBSR_EL1 ; 
 int /*<<< orphan*/  FUNC0 (struct perf_output_handle*,struct perf_event*) ; 
 int FUNC1 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev)
{
	struct perf_output_handle *handle = dev;
	struct perf_event *event = handle->event;
	enum arm_spe_pmu_buf_fault_action act;

	if (!FUNC5(handle))
		return IRQ_NONE;

	act = FUNC1(handle);
	if (act == SPE_PMU_BUF_FAULT_ACT_SPURIOUS)
		return IRQ_NONE;

	/*
	 * Ensure perf callbacks have completed, which may disable the
	 * profiling buffer in response to a TRUNCATION flag.
	 */
	FUNC3();

	switch (act) {
	case SPE_PMU_BUF_FAULT_ACT_FATAL:
		/*
		 * If a fatal exception occurred then leaving the profiling
		 * buffer enabled is a recipe waiting to happen. Since
		 * fatal faults don't always imply truncation, make sure
		 * that the profiling buffer is disabled explicitly before
		 * clearing the syndrome register.
		 */
		FUNC2();
		break;
	case SPE_PMU_BUF_FAULT_ACT_OK:
		/*
		 * We handled the fault (the buffer was full), so resume
		 * profiling as long as we didn't detect truncation.
		 * PMBPTR might be misaligned, but we'll burn that bridge
		 * when we get to it.
		 */
		if (!(handle->aux_flags & PERF_AUX_FLAG_TRUNCATED)) {
			FUNC0(handle, event);
			FUNC4();
		}
		break;
	case SPE_PMU_BUF_FAULT_ACT_SPURIOUS:
		/* We've seen you before, but GCC has the memory of a sieve. */
		break;
	}

	/* The buffer pointers are now sane, so resume profiling. */
	FUNC6(0, SYS_PMBSR_EL1);
	return IRQ_HANDLED;
}