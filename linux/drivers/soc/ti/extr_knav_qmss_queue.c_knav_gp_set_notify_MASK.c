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
struct knav_range_info {int flags; unsigned int queue_base; TYPE_1__* irqs; } ;
struct knav_queue_inst {unsigned int id; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int RANGE_HAS_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct knav_range_info *range,
			       struct knav_queue_inst *inst,
			       bool enabled)
{
	unsigned queue;

	if (range->flags & RANGE_HAS_IRQ) {
		queue = inst->id - range->queue_base;
		if (enabled)
			FUNC1(range->irqs[queue].irq);
		else
			FUNC0(range->irqs[queue].irq);
	}
	return 0;
}