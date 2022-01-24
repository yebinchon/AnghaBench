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
typedef  int u8 ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
typedef  enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int IRQCHIP_STATE_LINE_LEVEL ; 
 int /*<<< orphan*/  QPNPINT_REG_RT_STS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct irq_data *d,
				     enum irqchip_irq_state which,
				     bool *state)
{
	u8 irq = FUNC1(d->hwirq);
	u8 status = 0;

	if (which != IRQCHIP_STATE_LINE_LEVEL)
		return -EINVAL;

	FUNC2(d, QPNPINT_REG_RT_STS, &status, 1);
	*state = !!(status & FUNC0(irq));

	return 0;
}