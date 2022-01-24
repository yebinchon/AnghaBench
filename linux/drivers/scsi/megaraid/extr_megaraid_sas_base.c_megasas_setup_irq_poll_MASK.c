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
struct megasas_irq_context {int irq_poll_scheduled; int /*<<< orphan*/  irqpoll; int /*<<< orphan*/  os_irq; } ;
struct megasas_instance {scalar_t__ msix_vectors; int /*<<< orphan*/  threshold_reply_count; int /*<<< orphan*/  pdev; struct megasas_irq_context* irq_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  megasas_irqpoll ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static
void FUNC2(struct megasas_instance *instance)
{
	struct megasas_irq_context *irq_ctx;
	u32 count, i;

	count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;

	/* Initialize IRQ poll */
	for (i = 0; i < count; i++) {
		irq_ctx = &instance->irq_context[i];
		irq_ctx->os_irq = FUNC1(instance->pdev, i);
		irq_ctx->irq_poll_scheduled = false;
		FUNC0(&irq_ctx->irqpoll,
			      instance->threshold_reply_count,
			      megasas_irqpoll);
	}
}