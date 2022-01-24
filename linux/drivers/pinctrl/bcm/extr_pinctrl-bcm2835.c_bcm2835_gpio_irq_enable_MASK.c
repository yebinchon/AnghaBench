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
 int /*<<< orphan*/  FUNC2 (struct bcm2835_pinctrl*,unsigned int,int) ; 
 struct bcm2835_pinctrl* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 unsigned int FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC4(data);
	struct bcm2835_pinctrl *pc = FUNC3(chip);
	unsigned gpio = FUNC5(data);
	unsigned offset = FUNC1(gpio);
	unsigned bank = FUNC0(gpio);
	unsigned long flags;

	FUNC6(&pc->irq_lock[bank], flags);
	FUNC8(offset, &pc->enabled_irq_map[bank]);
	FUNC2(pc, gpio, true);
	FUNC7(&pc->irq_lock[bank], flags);
}