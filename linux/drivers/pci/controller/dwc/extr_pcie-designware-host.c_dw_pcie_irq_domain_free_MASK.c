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
struct pcie_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  msi_irq_in_use; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcie_port* FUNC1 (struct irq_data*) ; 
 struct irq_data* FUNC2 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_domain *domain,
				    unsigned int virq, unsigned int nr_irqs)
{
	struct irq_data *d = FUNC2(domain, virq);
	struct pcie_port *pp = FUNC1(d);
	unsigned long flags;

	FUNC4(&pp->lock, flags);

	FUNC0(pp->msi_irq_in_use, d->hwirq,
			      FUNC3(nr_irqs));

	FUNC5(&pp->lock, flags);
}