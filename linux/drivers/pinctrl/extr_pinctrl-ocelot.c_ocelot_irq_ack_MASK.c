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
struct ocelot_pinctrl {int /*<<< orphan*/  map; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  OCELOT_GPIO_INTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ocelot_pinctrl*,unsigned int) ; 
 struct ocelot_pinctrl* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 unsigned int FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC3(data);
	struct ocelot_pinctrl *info = FUNC2(chip);
	unsigned int gpio = FUNC4(data);

	FUNC5(info->map, FUNC1(OCELOT_GPIO_INTR, info, gpio),
			  FUNC0(gpio % 32), FUNC0(gpio % 32));
}