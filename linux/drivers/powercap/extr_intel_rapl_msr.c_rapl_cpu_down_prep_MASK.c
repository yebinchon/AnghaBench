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
struct rapl_package {unsigned int lead_cpu; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int nr_cpu_ids ; 
 struct rapl_package* FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rapl_msr_priv ; 
 int /*<<< orphan*/  FUNC3 (struct rapl_package*) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct rapl_package *rp;
	int lead_cpu;

	rp = FUNC2(cpu, &rapl_msr_priv);
	if (!rp)
		return 0;

	FUNC0(cpu, &rp->cpumask);
	lead_cpu = FUNC1(&rp->cpumask);
	if (lead_cpu >= nr_cpu_ids)
		FUNC3(rp);
	else if (rp->lead_cpu == cpu)
		rp->lead_cpu = lead_cpu;
	return 0;
}