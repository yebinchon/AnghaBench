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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ do_countdown ; 
 int /*<<< orphan*/  irq_enabled_cpus ; 
 scalar_t__* per_cpu_countdown ; 
 int FUNC6 () ; 

__attribute__((used)) static irqreturn_t FUNC7(int cpl, void *dev_id)
{
	int cpu = FUNC6();
	unsigned int core = FUNC1(cpu);
	int node = FUNC2(cpu);

	if (do_countdown) {
		if (per_cpu_countdown[cpu] > 0) {
			/* We're alive, poke the watchdog */
			FUNC4(node, FUNC0(core), 1);
			per_cpu_countdown[cpu]--;
		} else {
			/* Bad news, you are about to reboot. */
			FUNC5(cpl);
			FUNC3(cpu, &irq_enabled_cpus);
		}
	} else {
		/* Not open, just ping away... */
		FUNC4(node, FUNC0(core), 1);
	}
	return IRQ_HANDLED;
}