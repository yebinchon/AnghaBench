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
union cvmx_ciu_wdogx {int u64; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  octeon_wdt_poke_irq ; 

__attribute__((used)) static int FUNC7(unsigned int cpu)
{
	unsigned int core;
	int node;
	union cvmx_ciu_wdogx ciu_wdog;

	core = FUNC2(cpu);

	node = FUNC3(cpu);

	/* Poke the watchdog to clear out its state */
	FUNC4(node, FUNC0(core), 1);

	/* Disable the hardware. */
	ciu_wdog.u64 = 0;
	FUNC4(node, FUNC1(core), ciu_wdog.u64);

	FUNC5(FUNC6(cpu), octeon_wdt_poke_irq);
	return 0;
}