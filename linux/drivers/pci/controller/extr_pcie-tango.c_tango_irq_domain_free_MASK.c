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
struct tango_pcie {int /*<<< orphan*/  used_msi_lock; int /*<<< orphan*/  used_msi; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; struct tango_pcie* chip_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC1 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_domain *dom, unsigned int virq,
				  unsigned int nr_irqs)
{
	unsigned long flags;
	struct irq_data *d = FUNC1(dom, virq);
	struct tango_pcie *pcie = d->chip_data;

	FUNC2(&pcie->used_msi_lock, flags);
	FUNC0(d->hwirq, pcie->used_msi);
	FUNC3(&pcie->used_msi_lock, flags);
}