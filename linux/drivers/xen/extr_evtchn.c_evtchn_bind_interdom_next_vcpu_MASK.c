#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  affinity; } ;
struct irq_desc {int /*<<< orphan*/  lock; TYPE_1__ irq_common_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  bind_last_selected_cpu ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int) ; 
 struct irq_desc* FUNC3 (unsigned int) ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_desc*,unsigned int) ; 

__attribute__((used)) static void FUNC10(int evtchn)
{
	unsigned int selected_cpu, irq;
	struct irq_desc *desc;
	unsigned long flags;

	irq = FUNC2(evtchn);
	desc = FUNC3(irq);

	if (!desc)
		return;

	FUNC4(&desc->lock, flags);
	selected_cpu = FUNC6(bind_last_selected_cpu);
	selected_cpu = FUNC1(selected_cpu,
			desc->irq_common_data.affinity, cpu_online_mask);

	if (FUNC8(selected_cpu >= nr_cpu_ids))
		selected_cpu = FUNC0(desc->irq_common_data.affinity,
				cpu_online_mask);

	FUNC7(bind_last_selected_cpu, selected_cpu);

	/* unmask expects irqs to be disabled */
	FUNC9(desc, selected_cpu);
	FUNC5(&desc->lock, flags);
}