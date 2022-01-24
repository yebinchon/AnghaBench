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
struct gpio_chip {scalar_t__ base; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  OCELOT_GPIO_OUT_CLR ; 
 int /*<<< orphan*/  OCELOT_GPIO_OUT_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ocelot_pinctrl*,unsigned int) ; 
 struct ocelot_pinctrl* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip,
					unsigned int offset, int value)
{
	struct ocelot_pinctrl *info = FUNC2(chip);
	unsigned int pin = FUNC0(offset % 32);

	if (value)
		FUNC4(info->map, FUNC1(OCELOT_GPIO_OUT_SET, info, offset),
			     pin);
	else
		FUNC4(info->map, FUNC1(OCELOT_GPIO_OUT_CLR, info, offset),
			     pin);

	return FUNC3(chip->base + offset);
}