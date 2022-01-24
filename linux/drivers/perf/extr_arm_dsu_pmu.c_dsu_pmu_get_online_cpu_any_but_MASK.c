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
struct dsu_pmu {int /*<<< orphan*/  associated_cpus; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (struct cpumask*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpumask*,int) ; 

__attribute__((used)) static int FUNC2(struct dsu_pmu *dsu_pmu, int cpu)
{
	struct cpumask online_supported;

	FUNC0(&online_supported,
			 &dsu_pmu->associated_cpus, cpu_online_mask);
	return FUNC1(&online_supported, cpu);
}