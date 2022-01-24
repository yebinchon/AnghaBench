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
struct irq_domain {struct tango_pcie* host_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int MSI_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ *,struct tango_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tango_chip ; 

__attribute__((used)) static int FUNC5(struct irq_domain *dom, unsigned int virq,
				  unsigned int nr_irqs, void *args)
{
	struct tango_pcie *pcie = dom->host_data;
	unsigned long flags;
	int pos;

	FUNC3(&pcie->used_msi_lock, flags);
	pos = FUNC1(pcie->used_msi, MSI_MAX);
	if (pos >= MSI_MAX) {
		FUNC4(&pcie->used_msi_lock, flags);
		return -ENOSPC;
	}
	FUNC0(pos, pcie->used_msi);
	FUNC4(&pcie->used_msi_lock, flags);
	FUNC2(dom, virq, pos, &tango_chip,
			pcie, handle_edge_irq, NULL, NULL);

	return 0;
}