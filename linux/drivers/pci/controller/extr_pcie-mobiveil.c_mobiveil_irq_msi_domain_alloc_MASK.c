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
struct mobiveil_msi {unsigned long num_of_vectors; int /*<<< orphan*/  lock; int /*<<< orphan*/  msi_irq_in_use; } ;
struct mobiveil_pcie {struct mobiveil_msi msi; } ;
struct irq_domain {struct mobiveil_pcie* host_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned long,int /*<<< orphan*/ *,struct mobiveil_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mobiveil_msi_bottom_irq_chip ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct irq_domain *domain,
					 unsigned int virq,
					 unsigned int nr_irqs, void *args)
{
	struct mobiveil_pcie *pcie = domain->host_data;
	struct mobiveil_msi *msi = &pcie->msi;
	unsigned long bit;

	FUNC0(nr_irqs != 1);
	FUNC3(&msi->lock);

	bit = FUNC1(msi->msi_irq_in_use, msi->num_of_vectors);
	if (bit >= msi->num_of_vectors) {
		FUNC4(&msi->lock);
		return -ENOSPC;
	}

	FUNC5(bit, msi->msi_irq_in_use);

	FUNC4(&msi->lock);

	FUNC2(domain, virq, bit, &mobiveil_msi_bottom_irq_chip,
			    domain->host_data, handle_level_irq, NULL, NULL);
	return 0;
}