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
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct device *dev,
					       int irq, int cpu)
{
	int ret = 0;

	if (!FUNC4(irq)) {
		FUNC3(dev, "unable to set IRQ affinity\n");
		return -EINVAL;
	}

	if (cpu == -1 || !FUNC0(cpu))
		cpu = FUNC1(cpu_online_mask);

	ret = FUNC5(irq, FUNC2(cpu));
	if (ret)
		FUNC3(dev, "irq_set_affinity() on CPU %d failed\n", cpu);

	return ret;
}