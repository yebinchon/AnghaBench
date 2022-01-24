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
struct esp {int flags; TYPE_2__* host; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {scalar_t__ (* irq_pending ) (struct esp*) ;} ;

/* Variables and functions */
 int ESP_FLAG_QUICKIRQ_CHECK ; 
 int ESP_QUICKIRQ_LIMIT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct esp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (struct esp*) ; 
 scalar_t__ FUNC4 (struct esp*) ; 

irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct esp *esp = dev_id;
	unsigned long flags;
	irqreturn_t ret;

	FUNC1(esp->host->host_lock, flags);
	ret = IRQ_NONE;
	if (esp->ops->irq_pending(esp)) {
		ret = IRQ_HANDLED;
		for (;;) {
			int i;

			FUNC0(esp);
			if (!(esp->flags & ESP_FLAG_QUICKIRQ_CHECK))
				break;
			esp->flags &= ~ESP_FLAG_QUICKIRQ_CHECK;

			for (i = 0; i < ESP_QUICKIRQ_LIMIT; i++) {
				if (esp->ops->irq_pending(esp))
					break;
			}
			if (i == ESP_QUICKIRQ_LIMIT)
				break;
		}
	}
	FUNC2(esp->host->host_lock, flags);

	return ret;
}