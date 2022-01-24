#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct physdev_irq_status_query {int flags; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  pirq; } ;
struct TYPE_4__ {TYPE_1__ pirq; } ;
struct irq_info {TYPE_2__ u; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct physdev_irq_status_query*) ; 
 int /*<<< orphan*/  PHYSDEVOP_irq_status_query ; 
 scalar_t__ FUNC1 (int) ; 
 int XENIRQSTAT_shared ; 
 struct irq_info* FUNC2 (int) ; 

int FUNC3(int irq)
{
	struct irq_info *info = FUNC2(irq);
	struct physdev_irq_status_query irq_status;

	if (FUNC1(!info))
		return -ENOENT;

	irq_status.irq = info->u.pirq.pirq;

	if (FUNC0(PHYSDEVOP_irq_status_query, &irq_status))
		return 0;
	return !(irq_status.flags & XENIRQSTAT_shared);
}