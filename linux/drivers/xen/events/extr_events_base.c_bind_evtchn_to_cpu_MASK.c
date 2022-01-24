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
struct irq_info {unsigned int cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 struct irq_info* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_info*,unsigned int) ; 

__attribute__((used)) static void FUNC7(unsigned int chn, unsigned int cpu)
{
	int irq = FUNC3(chn);
	struct irq_info *info = FUNC4(irq);

	FUNC0(irq == -1);
#ifdef CONFIG_SMP
	cpumask_copy(irq_get_affinity_mask(irq), cpumask_of(cpu));
#endif
	FUNC6(info, cpu);

	info->cpu = cpu;
}