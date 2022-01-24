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
typedef  int u32 ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;
struct altera_msi {int /*<<< orphan*/  lock; int /*<<< orphan*/  used; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSI_INTMASK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct altera_msi* FUNC2 (struct irq_data*) ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 
 int FUNC4 (struct altera_msi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct altera_msi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct irq_domain *domain,
				   unsigned int virq, unsigned int nr_irqs)
{
	struct irq_data *d = FUNC3(domain, virq);
	struct altera_msi *msi = FUNC2(d);
	u32 mask;

	FUNC6(&msi->lock);

	if (!FUNC8(d->hwirq, msi->used)) {
		FUNC1(&msi->pdev->dev, "trying to free unused MSI#%lu\n",
			d->hwirq);
	} else {
		FUNC0(d->hwirq, msi->used);
		mask = FUNC4(msi, MSI_INTMASK);
		mask &= ~(1 << d->hwirq);
		FUNC5(msi, mask, MSI_INTMASK);
	}

	FUNC7(&msi->lock);
}