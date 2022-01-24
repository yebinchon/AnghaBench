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
struct TYPE_2__ {unsigned int cpu; int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* g_cci_pmu ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(unsigned int cpu)
{
	int target;

	if (!g_cci_pmu || cpu != g_cci_pmu->cpu)
		return 0;

	target = FUNC0(cpu_online_mask, cpu);
	if (target >= nr_cpu_ids)
		return 0;

	FUNC1(&g_cci_pmu->pmu, cpu, target);
	g_cci_pmu->cpu = target;
	return 0;
}