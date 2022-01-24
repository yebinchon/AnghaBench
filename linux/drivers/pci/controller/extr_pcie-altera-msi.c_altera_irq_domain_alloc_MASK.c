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
typedef  int u32 ;
struct irq_domain {struct altera_msi* host_data; } ;
struct altera_msi {unsigned long num_of_vectors; int /*<<< orphan*/  lock; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  MSI_INTMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  altera_msi_bottom_irq_chip ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned long,int /*<<< orphan*/ *,struct altera_msi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct altera_msi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct altera_msi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct irq_domain *domain, unsigned int virq,
				   unsigned int nr_irqs, void *args)
{
	struct altera_msi *msi = domain->host_data;
	unsigned long bit;
	u32 mask;

	FUNC0(nr_irqs != 1);
	FUNC5(&msi->lock);

	bit = FUNC1(msi->used, msi->num_of_vectors);
	if (bit >= msi->num_of_vectors) {
		FUNC6(&msi->lock);
		return -ENOSPC;
	}

	FUNC7(bit, msi->used);

	FUNC6(&msi->lock);

	FUNC2(domain, virq, bit, &altera_msi_bottom_irq_chip,
			    domain->host_data, handle_simple_irq,
			    NULL, NULL);

	mask = FUNC3(msi, MSI_INTMASK);
	mask |= 1 << bit;
	FUNC4(msi, mask, MSI_INTMASK);

	return 0;
}