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
struct dsu_pmu {int /*<<< orphan*/  active_cpu; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(int cpu, struct dsu_pmu *dsu_pmu)
{
	FUNC0(cpu, &dsu_pmu->active_cpu);
	if (FUNC1(dsu_pmu->irq, &dsu_pmu->active_cpu))
		FUNC2("Failed to set irq affinity to %d\n", cpu);
}