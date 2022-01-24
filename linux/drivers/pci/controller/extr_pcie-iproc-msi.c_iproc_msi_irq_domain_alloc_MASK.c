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
struct irq_domain {struct iproc_msi* host_data; } ;
struct iproc_msi {int nr_msi_vecs; int /*<<< orphan*/  bitmap_lock; int /*<<< orphan*/  nr_cpus; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  iproc_msi_bottom_irq_chip ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ *,struct iproc_msi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *domain,
				      unsigned int virq, unsigned int nr_irqs,
				      void *args)
{
	struct iproc_msi *msi = domain->host_data;
	int hwirq, i;

	FUNC3(&msi->bitmap_lock);

	/* Allocate 'nr_cpus' number of MSI vectors each time */
	hwirq = FUNC0(msi->bitmap, msi->nr_msi_vecs, 0,
					   msi->nr_cpus, 0);
	if (hwirq < msi->nr_msi_vecs) {
		FUNC1(msi->bitmap, hwirq, msi->nr_cpus);
	} else {
		FUNC4(&msi->bitmap_lock);
		return -ENOSPC;
	}

	FUNC4(&msi->bitmap_lock);

	for (i = 0; i < nr_irqs; i++) {
		FUNC2(domain, virq + i, hwirq + i,
				    &iproc_msi_bottom_irq_chip,
				    domain->host_data, handle_simple_irq,
				    NULL, NULL);
	}

	return hwirq;
}