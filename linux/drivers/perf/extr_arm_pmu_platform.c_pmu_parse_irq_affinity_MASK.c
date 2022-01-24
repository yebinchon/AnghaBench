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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int nr_cpu_ids ; 
 int FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

__attribute__((used)) static int FUNC5(struct device_node *node, int i)
{
	struct device_node *dn;
	int cpu;

	/*
	 * If we don't have an interrupt-affinity property, we guess irq
	 * affinity matches our logical CPU order, as we used to assume.
	 * This is fragile, so we'll warn in pmu_parse_irqs().
	 */
	if (!FUNC3(node))
		return i;

	dn = FUNC2(node, "interrupt-affinity", i);
	if (!dn) {
		FUNC4("failed to parse interrupt-affinity[%d] for %pOFn\n",
			i, node);
		return -EINVAL;
	}

	cpu = FUNC0(dn);
	if (cpu < 0) {
		FUNC4("failed to find logical CPU for %pOFn\n", dn);
		cpu = nr_cpu_ids;
	}

	FUNC1(dn);

	return cpu;
}