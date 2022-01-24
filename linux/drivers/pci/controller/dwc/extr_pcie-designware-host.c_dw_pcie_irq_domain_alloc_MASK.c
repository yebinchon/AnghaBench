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
typedef  unsigned int u32 ;
struct pcie_port {int /*<<< orphan*/  msi_irq_chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_vectors; int /*<<< orphan*/  msi_irq_in_use; } ;
struct irq_domain {struct pcie_port* host_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ ,struct pcie_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *domain,
				    unsigned int virq, unsigned int nr_irqs,
				    void *args)
{
	struct pcie_port *pp = domain->host_data;
	unsigned long flags;
	u32 i;
	int bit;

	FUNC3(&pp->lock, flags);

	bit = FUNC0(pp->msi_irq_in_use, pp->num_vectors,
				      FUNC2(nr_irqs));

	FUNC4(&pp->lock, flags);

	if (bit < 0)
		return -ENOSPC;

	for (i = 0; i < nr_irqs; i++)
		FUNC1(domain, virq + i, bit + i,
				    pp->msi_irq_chip,
				    pp, handle_edge_irq,
				    NULL, NULL);

	return 0;
}