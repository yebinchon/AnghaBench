#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct irq_data {TYPE_1__* domain; } ;
struct advk_pcie {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_2__ {struct advk_pcie* host_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_ISR1_MASK_REG ; 
 int /*<<< orphan*/  FUNC1 (struct advk_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct advk_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct advk_pcie *pcie = d->domain->host_data;
	irq_hw_number_t hwirq = FUNC3(d);
	u32 mask;

	mask = FUNC1(pcie, PCIE_ISR1_MASK_REG);
	mask |= FUNC0(hwirq);
	FUNC2(pcie, mask, PCIE_ISR1_MASK_REG);
}