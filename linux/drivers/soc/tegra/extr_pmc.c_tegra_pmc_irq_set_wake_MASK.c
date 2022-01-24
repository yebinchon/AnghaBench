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
struct tegra_pmc {scalar_t__ wake; } ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int ULONG_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 
 struct tegra_pmc* FUNC4 (struct irq_data*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct irq_data *data, unsigned int on)
{
	struct tegra_pmc *pmc = FUNC4(data);
	unsigned int offset, bit;
	u32 value;

	/* nothing to do if there's no associated wake event */
	if (FUNC3(data->hwirq == ULONG_MAX))
		return 0;

	offset = data->hwirq / 32;
	bit = data->hwirq % 32;

	/* clear wake status */
	FUNC6(0x1, pmc->wake + FUNC1(data->hwirq));

	/* route wake to tier 2 */
	value = FUNC5(pmc->wake + FUNC2(offset));

	if (!on)
		value &= ~(1 << bit);
	else
		value |= 1 << bit;

	FUNC6(value, pmc->wake + FUNC2(offset));

	/* enable wakeup event */
	FUNC6(!!on, pmc->wake + FUNC0(data->hwirq));

	return 0;
}