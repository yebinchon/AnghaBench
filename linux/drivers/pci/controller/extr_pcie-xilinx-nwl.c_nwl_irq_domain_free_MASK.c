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
struct nwl_msi {int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; } ;
struct nwl_pcie {struct nwl_msi msi; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct nwl_pcie* FUNC2 (struct irq_data*) ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_domain *domain, unsigned int virq,
					unsigned int nr_irqs)
{
	struct irq_data *data = FUNC3(domain, virq);
	struct nwl_pcie *pcie = FUNC2(data);
	struct nwl_msi *msi = &pcie->msi;

	FUNC4(&msi->lock);
	FUNC0(msi->bitmap, data->hwirq,
			      FUNC1(nr_irqs));
	FUNC5(&msi->lock);
}