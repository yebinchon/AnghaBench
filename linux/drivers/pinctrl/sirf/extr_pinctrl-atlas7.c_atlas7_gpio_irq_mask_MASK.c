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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;
struct atlas7_gpio_chip {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atlas7_gpio_chip*,int /*<<< orphan*/ ) ; 
 struct atlas7_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC2(d);
	struct atlas7_gpio_chip *a7gc = FUNC1(gc);
	unsigned long flags;

	FUNC3(&a7gc->lock, flags);

	FUNC0(a7gc, d->hwirq);

	FUNC4(&a7gc->lock, flags);
}