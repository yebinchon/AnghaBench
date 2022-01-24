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
struct mtk_pcie_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  msi_irq_in_use; } ;
struct irq_domain {struct mtk_pcie_port* host_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned long MTK_MSI_IRQS_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,unsigned int,unsigned long,int /*<<< orphan*/ *,struct mtk_pcie_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_msi_bottom_irq_chip ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct irq_domain *domain, unsigned int virq,
				     unsigned int nr_irqs, void *args)
{
	struct mtk_pcie_port *port = domain->host_data;
	unsigned long bit;

	FUNC0(nr_irqs != 1);
	FUNC4(&port->lock);

	bit = FUNC2(port->msi_irq_in_use, MTK_MSI_IRQS_NUM);
	if (bit >= MTK_MSI_IRQS_NUM) {
		FUNC5(&port->lock);
		return -ENOSPC;
	}

	FUNC1(bit, port->msi_irq_in_use);

	FUNC5(&port->lock);

	FUNC3(domain, virq, bit, &mtk_msi_bottom_irq_chip,
			    domain->host_data, handle_edge_irq,
			    NULL, NULL);

	return 0;
}