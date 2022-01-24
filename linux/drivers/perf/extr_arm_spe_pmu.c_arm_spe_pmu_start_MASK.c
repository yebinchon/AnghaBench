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
typedef  int /*<<< orphan*/  u64 ;
struct perf_output_handle {int dummy; } ;
struct hw_perf_event {int /*<<< orphan*/  period_left; scalar_t__ state; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_spe_pmu {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int PERF_EF_RELOAD ; 
 int /*<<< orphan*/  SYS_PMSCR_EL1 ; 
 int /*<<< orphan*/  SYS_PMSEVFR_EL1 ; 
 int /*<<< orphan*/  SYS_PMSFCR_EL1 ; 
 int /*<<< orphan*/  SYS_PMSICR_EL1 ; 
 int /*<<< orphan*/  SYS_PMSIRR_EL1 ; 
 int /*<<< orphan*/  SYS_PMSLATFR_EL1 ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct perf_output_handle* FUNC8 (int /*<<< orphan*/ ) ; 
 struct arm_spe_pmu* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct perf_event *event, int flags)
{
	u64 reg;
	struct arm_spe_pmu *spe_pmu = FUNC9(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	struct perf_output_handle *handle = FUNC8(spe_pmu->handle);

	hwc->state = 0;
	FUNC5(handle, event);
	if (hwc->state)
		return;

	reg = FUNC2(event);
	FUNC10(reg, SYS_PMSFCR_EL1);

	reg = FUNC1(event);
	FUNC10(reg, SYS_PMSEVFR_EL1);

	reg = FUNC4(event);
	FUNC10(reg, SYS_PMSLATFR_EL1);

	if (flags & PERF_EF_RELOAD) {
		reg = FUNC3(event);
		FUNC10(reg, SYS_PMSIRR_EL1);
		FUNC6();
		reg = FUNC7(&hwc->period_left);
		FUNC10(reg, SYS_PMSICR_EL1);
	}

	reg = FUNC0(event);
	FUNC6();
	FUNC10(reg, SYS_PMSCR_EL1);
}