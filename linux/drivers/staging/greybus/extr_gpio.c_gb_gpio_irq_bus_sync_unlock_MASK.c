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
struct irq_data {size_t hwirq; } ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_line {int irq_type_pending; int masked_pending; scalar_t__ masked; int /*<<< orphan*/  irq_type; } ;
struct gb_gpio_controller {int /*<<< orphan*/  irq_lock; struct gb_gpio_line* lines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_gpio_controller*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_gpio_controller*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_gpio_controller*,size_t) ; 
 struct gb_gpio_controller* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct gpio_chip *chip = FUNC4(d);
	struct gb_gpio_controller *ggc = FUNC3(chip);
	struct gb_gpio_line *line = &ggc->lines[d->hwirq];

	if (line->irq_type_pending) {
		FUNC1(ggc, d->hwirq, line->irq_type);
		line->irq_type_pending = false;
	}

	if (line->masked_pending) {
		if (line->masked)
			FUNC0(ggc, d->hwirq);
		else
			FUNC2(ggc, d->hwirq);
		line->masked_pending = false;
	}

	FUNC5(&ggc->irq_lock);
}