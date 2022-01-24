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
struct irq_domain {struct nwl_pcie* host_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  INT_PCI_MSI_NR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ *,struct nwl_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nwl_irq_chip ; 

__attribute__((used)) static int FUNC5(struct irq_domain *domain, unsigned int virq,
				unsigned int nr_irqs, void *args)
{
	struct nwl_pcie *pcie = domain->host_data;
	struct nwl_msi *msi = &pcie->msi;
	int bit;
	int i;

	FUNC3(&msi->lock);
	bit = FUNC0(msi->bitmap, INT_PCI_MSI_NR,
				      FUNC1(nr_irqs));
	if (bit < 0) {
		FUNC4(&msi->lock);
		return -ENOSPC;
	}

	for (i = 0; i < nr_irqs; i++) {
		FUNC2(domain, virq + i, bit + i, &nwl_irq_chip,
				domain->host_data, handle_simple_irq,
				NULL, NULL);
	}
	FUNC4(&msi->lock);
	return 0;
}