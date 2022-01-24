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
 int /*<<< orphan*/  GPEDS0 ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_pinctrl*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_pinctrl*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 struct bcm2835_pinctrl* FUNC5 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC6 (struct irq_data*) ; 
 unsigned int FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC6(data);
	struct bcm2835_pinctrl *pc = FUNC5(chip);
	unsigned gpio = FUNC7(data);
	unsigned offset = FUNC1(gpio);
	unsigned bank = FUNC0(gpio);
	unsigned long flags;

	FUNC8(&pc->irq_lock[bank], flags);
	FUNC2(pc, gpio, false);
	/* Clear events that were latched prior to clearing event sources */
	FUNC3(pc, GPEDS0, gpio);
	FUNC4(offset, &pc->enabled_irq_map[bank]);
	FUNC9(&pc->irq_lock[bank], flags);
}