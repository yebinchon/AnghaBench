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
struct vfio_platform_irq {int masked; int /*<<< orphan*/  lock; int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct vfio_platform_irq *irq_ctx)
{
	unsigned long flags;

	FUNC1(&irq_ctx->lock, flags);

	if (!irq_ctx->masked) {
		FUNC0(irq_ctx->hwirq);
		irq_ctx->masked = true;
	}

	FUNC2(&irq_ctx->lock, flags);
}