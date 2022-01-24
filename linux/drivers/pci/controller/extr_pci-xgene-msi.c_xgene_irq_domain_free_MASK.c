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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_msi {int /*<<< orphan*/  bitmap_lock; int /*<<< orphan*/  num_cpus; int /*<<< orphan*/  bitmap; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xgene_msi* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC4 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct irq_domain *domain,
				  unsigned int virq, unsigned int nr_irqs)
{
	struct irq_data *d = FUNC4(domain, virq);
	struct xgene_msi *msi = FUNC2(d);
	u32 hwirq;

	FUNC5(&msi->bitmap_lock);

	hwirq = FUNC1(d->hwirq);
	FUNC0(msi->bitmap, hwirq, msi->num_cpus);

	FUNC6(&msi->bitmap_lock);

	FUNC3(domain, virq, nr_irqs);
}