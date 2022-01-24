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
struct pmu_hw_events {int /*<<< orphan*/  used_mask; } ;
struct pmu {int dummy; } ;
struct arm_pmu {int /*<<< orphan*/  (* start ) (struct arm_pmu*) ;int /*<<< orphan*/  supported_cpus; int /*<<< orphan*/  num_events; int /*<<< orphan*/  hw_events; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct arm_pmu*) ; 
 struct pmu_hw_events* FUNC4 (int /*<<< orphan*/ ) ; 
 struct arm_pmu* FUNC5 (struct pmu*) ; 

__attribute__((used)) static void FUNC6(struct pmu *pmu)
{
	struct arm_pmu *armpmu = FUNC5(pmu);
	struct pmu_hw_events *hw_events = FUNC4(armpmu->hw_events);
	int enabled = FUNC0(hw_events->used_mask, armpmu->num_events);

	/* For task-bound events we may be called on other CPUs */
	if (!FUNC1(FUNC2(), &armpmu->supported_cpus))
		return;

	if (enabled)
		armpmu->start(armpmu);
}