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
struct TYPE_2__ {unsigned int virq; } ;
struct irq_info {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQT_VIRQ ; 
 struct irq_info* FUNC0 (unsigned int) ; 
 unsigned int* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  virq_to_irq ; 
 int FUNC2 (struct irq_info*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned cpu,
				   unsigned irq,
				   unsigned evtchn,
				   unsigned virq)
{
	struct irq_info *info = FUNC0(irq);

	info->u.virq = virq;

	FUNC1(virq_to_irq, cpu)[virq] = irq;

	return FUNC2(info, irq, IRQT_VIRQ, evtchn, 0);
}