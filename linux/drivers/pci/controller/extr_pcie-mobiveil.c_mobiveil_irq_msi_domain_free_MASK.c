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
struct mobiveil_msi {int /*<<< orphan*/  lock; int /*<<< orphan*/  msi_irq_in_use; } ;
struct mobiveil_pcie {TYPE_1__* pdev; struct mobiveil_msi msi; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct mobiveil_pcie* FUNC2 (struct irq_data*) ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct irq_domain *domain,
					 unsigned int virq,
					 unsigned int nr_irqs)
{
	struct irq_data *d = FUNC3(domain, virq);
	struct mobiveil_pcie *pcie = FUNC2(d);
	struct mobiveil_msi *msi = &pcie->msi;

	FUNC4(&msi->lock);

	if (!FUNC6(d->hwirq, msi->msi_irq_in_use))
		FUNC1(&pcie->pdev->dev, "trying to free unused MSI#%lu\n",
			d->hwirq);
	else
		FUNC0(d->hwirq, msi->msi_irq_in_use);

	FUNC5(&msi->lock);
}