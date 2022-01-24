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
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct device_node *dev, cpumask_t *mask)
{
	int i = 0, n, cpu;
	struct device_node *cpu_node;

	n = FUNC1(dev, "cpus", NULL);
	if (n <= 0)
		return -ENODEV;
	for (; i < n; i++) {
		cpu_node = FUNC4(dev, "cpus", i);
		if (!cpu_node)
			break;
		cpu = FUNC2(cpu_node);
		FUNC3(cpu_node);
		/*
		 * We have to ignore the failures here and continue scanning
		 * the list to handle cases where the nr_cpus could be capped
		 * in the running kernel.
		 */
		if (cpu < 0)
			continue;
		FUNC0(cpu, mask);
	}
	return 0;
}