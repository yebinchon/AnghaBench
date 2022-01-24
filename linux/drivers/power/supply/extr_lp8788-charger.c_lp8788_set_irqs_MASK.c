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
struct resource {int start; int end; } ;
struct platform_device {int dummy; } ;
struct lp8788_charger {int num_irqs; TYPE_2__* irqs; TYPE_1__* lp; } ;
struct irq_domain {int dummy; } ;
struct TYPE_4__ {int virq; int which; } ;
struct TYPE_3__ {struct irq_domain* irqdm; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int,struct lp8788_charger*) ; 
 int FUNC1 (struct irq_domain*,int) ; 
 int /*<<< orphan*/  lp8788_charger_irq_thread ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct lp8788_charger*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
			struct lp8788_charger *pchg, const char *name)
{
	struct resource *r;
	struct irq_domain *irqdm = pchg->lp->irqdm;
	int irq_start;
	int irq_end;
	int virq;
	int nr_irq;
	int i;
	int ret;

	/* no error even if no irq resource */
	r = FUNC2(pdev, IORESOURCE_IRQ, name);
	if (!r)
		return 0;

	irq_start = r->start;
	irq_end = r->end;

	for (i = irq_start; i <= irq_end; i++) {
		nr_irq = pchg->num_irqs;

		virq = FUNC1(irqdm, i);
		pchg->irqs[nr_irq].virq = virq;
		pchg->irqs[nr_irq].which = i;
		pchg->num_irqs++;

		ret = FUNC3(virq, NULL,
					lp8788_charger_irq_thread,
					0, name, pchg);
		if (ret)
			break;
	}

	if (i <= irq_end)
		goto err_free_irq;

	return 0;

err_free_irq:
	for (i = 0; i < pchg->num_irqs; i++)
		FUNC0(pchg->irqs[i].virq, pchg);
	return ret;
}