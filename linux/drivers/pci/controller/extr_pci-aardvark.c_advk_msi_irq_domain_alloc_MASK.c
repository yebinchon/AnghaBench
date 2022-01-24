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
struct irq_domain {struct advk_pcie* host_data; } ;
struct advk_pcie {int /*<<< orphan*/  msi_bottom_irq_chip; int /*<<< orphan*/  msi_used_lock; int /*<<< orphan*/  msi_used; } ;

/* Variables and functions */
 int ENOSPC ; 
 int MSI_IRQ_NUM ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ *,struct advk_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *domain,
				     unsigned int virq,
				     unsigned int nr_irqs, void *args)
{
	struct advk_pcie *pcie = domain->host_data;
	int hwirq, i;

	FUNC3(&pcie->msi_used_lock);
	hwirq = FUNC0(pcie->msi_used, MSI_IRQ_NUM,
					   0, nr_irqs, 0);
	if (hwirq >= MSI_IRQ_NUM) {
		FUNC4(&pcie->msi_used_lock);
		return -ENOSPC;
	}

	FUNC1(pcie->msi_used, hwirq, nr_irqs);
	FUNC4(&pcie->msi_used_lock);

	for (i = 0; i < nr_irqs; i++)
		FUNC2(domain, virq + i, hwirq + i,
				    &pcie->msi_bottom_irq_chip,
				    domain->host_data, handle_simple_irq,
				    NULL, NULL);

	return hwirq;
}