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
struct irq_data {unsigned int hwirq; int /*<<< orphan*/  irq; TYPE_1__* chip; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 

__attribute__((used)) static unsigned int FUNC5(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC1(d);
	unsigned int gpio = d->hwirq;

	/* active-high, input, clear interrupt, enable interrupt */
	FUNC0(d->chip->parent_device, "startup: %u.%u\n", gpio, d->irq);
	FUNC2(gc, gpio);
	FUNC3(d);
	FUNC4(d);

	return 0;
}