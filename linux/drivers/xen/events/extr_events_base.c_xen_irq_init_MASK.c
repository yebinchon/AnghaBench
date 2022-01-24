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
struct irq_info {int refcnt; int /*<<< orphan*/  list; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQT_UNBOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct irq_info*) ; 
 struct irq_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 
 int /*<<< orphan*/  xen_irq_list_head ; 

__attribute__((used)) static void FUNC7(unsigned irq)
{
	struct irq_info *info;
#ifdef CONFIG_SMP
	/* By default all event channels notify CPU#0. */
	cpumask_copy(irq_get_affinity_mask(irq), cpumask_of(0));
#endif

	info = FUNC4(sizeof(*info), GFP_KERNEL);
	if (info == NULL)
		FUNC6("Unable to allocate metadata for IRQ%d\n", irq);

	info->type = IRQT_UNBOUND;
	info->refcnt = -1;

	FUNC3(irq, info);

	FUNC5(&info->list, &xen_irq_list_head);
}