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
struct vfio_platform_irq {int masked; int /*<<< orphan*/  trigger; int /*<<< orphan*/  lock; int /*<<< orphan*/  hwirq; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct vfio_platform_irq *irq_ctx = dev_id;
	unsigned long flags;
	int ret = IRQ_NONE;

	FUNC2(&irq_ctx->lock, flags);

	if (!irq_ctx->masked) {
		ret = IRQ_HANDLED;

		/* automask maskable interrupts */
		FUNC0(irq_ctx->hwirq);
		irq_ctx->masked = true;
	}

	FUNC3(&irq_ctx->lock, flags);

	if (ret == IRQ_HANDLED)
		FUNC1(irq_ctx->trigger, 1);

	return ret;
}