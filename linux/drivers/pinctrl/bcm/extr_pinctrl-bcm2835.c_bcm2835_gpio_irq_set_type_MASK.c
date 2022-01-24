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
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct bcm2835_pinctrl {int /*<<< orphan*/ * irq_lock; int /*<<< orphan*/ * enabled_irq_map; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 int FUNC2 (struct bcm2835_pinctrl*,unsigned int,unsigned int) ; 
 int FUNC3 (struct bcm2835_pinctrl*,unsigned int,unsigned int) ; 
 struct bcm2835_pinctrl* FUNC4 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct gpio_chip* FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct irq_data *data, unsigned int type)
{
	struct gpio_chip *chip = FUNC5(data);
	struct bcm2835_pinctrl *pc = FUNC4(chip);
	unsigned gpio = FUNC7(data);
	unsigned offset = FUNC1(gpio);
	unsigned bank = FUNC0(gpio);
	unsigned long flags;
	int ret;

	FUNC8(&pc->irq_lock[bank], flags);

	if (FUNC10(offset, &pc->enabled_irq_map[bank]))
		ret = FUNC3(pc, gpio, type);
	else
		ret = FUNC2(pc, gpio, type);

	if (type & IRQ_TYPE_EDGE_BOTH)
		FUNC6(data, handle_edge_irq);
	else
		FUNC6(data, handle_level_irq);

	FUNC9(&pc->irq_lock[bank], flags);

	return ret;
}