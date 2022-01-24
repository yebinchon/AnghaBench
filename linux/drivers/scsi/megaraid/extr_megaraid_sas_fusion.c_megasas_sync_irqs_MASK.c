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
typedef  size_t u32 ;
struct megasas_irq_context {int irq_poll_scheduled; int /*<<< orphan*/  os_irq; int /*<<< orphan*/  irqpoll; } ;
struct megasas_instance {scalar_t__ msix_vectors; struct megasas_irq_context* irq_context; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long instance_addr)
{
	u32 count, i;
	struct megasas_instance *instance =
		(struct megasas_instance *)instance_addr;
	struct megasas_irq_context *irq_ctx;

	count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;

	for (i = 0; i < count; i++) {
		FUNC3(FUNC2(instance->pdev, i));
		irq_ctx = &instance->irq_context[i];
		FUNC1(&irq_ctx->irqpoll);
		if (irq_ctx->irq_poll_scheduled) {
			irq_ctx->irq_poll_scheduled = false;
			FUNC0(irq_ctx->os_irq);
		}
	}
}