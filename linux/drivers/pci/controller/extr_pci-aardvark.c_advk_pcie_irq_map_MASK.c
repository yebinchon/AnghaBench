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
struct advk_pcie {int /*<<< orphan*/  irq_chip; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *h,
			     unsigned int virq, irq_hw_number_t hwirq)
{
	struct advk_pcie *pcie = h->host_data;

	FUNC0(FUNC1(virq));
	FUNC4(virq, IRQ_LEVEL);
	FUNC2(virq, &pcie->irq_chip,
				 handle_level_irq);
	FUNC3(virq, pcie);

	return 0;
}