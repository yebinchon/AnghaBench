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
struct TYPE_2__ {int /*<<< orphan*/  ie; } ;
struct plgpio {int (* p2o ) (int) ;int p2o_regs; int /*<<< orphan*/  lock; TYPE_1__ regs; int /*<<< orphan*/  base; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int PTO_IE_REG ; 
 struct plgpio* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC1(d);
	struct plgpio *plgpio = FUNC0(gc);
	int offset = d->hwirq;
	unsigned long flags;

	/* get correct offset for "offset" pin */
	if (plgpio->p2o && (plgpio->p2o_regs & PTO_IE_REG)) {
		offset = plgpio->p2o(offset);
		if (offset == -1)
			return;
	}

	FUNC3(&plgpio->lock, flags);
	FUNC2(plgpio->base, offset, plgpio->regs.ie);
	FUNC4(&plgpio->lock, flags);
}