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
struct rapl_package {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rapl_package*) ; 
 int FUNC1 (struct rapl_package*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 struct rapl_package* FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 struct rapl_package* FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rapl_msr_priv ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	struct rapl_package *rp;

	rp = FUNC4(cpu, &rapl_msr_priv);
	if (!rp) {
		rp = FUNC3(cpu, &rapl_msr_priv);
		if (FUNC0(rp))
			return FUNC1(rp);
	}
	FUNC2(cpu, &rp->cpumask);
	return 0;
}