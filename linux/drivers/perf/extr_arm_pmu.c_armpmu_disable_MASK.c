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
struct pmu {int dummy; } ;
struct arm_pmu {int /*<<< orphan*/  (* stop ) (struct arm_pmu*) ;int /*<<< orphan*/  supported_cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct arm_pmu*) ; 
 struct arm_pmu* FUNC3 (struct pmu*) ; 

__attribute__((used)) static void FUNC4(struct pmu *pmu)
{
	struct arm_pmu *armpmu = FUNC3(pmu);

	/* For task-bound events we may be called on other CPUs */
	if (!FUNC0(FUNC1(), &armpmu->supported_cpus))
		return;

	armpmu->stop(armpmu);
}