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
struct rockchip_pinctrl {int /*<<< orphan*/  dev; } ;
struct pinctrl_gpio_range {int /*<<< orphan*/  name; struct gpio_chip* gc; } ;
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 int FUNC0 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,int,char*) ; 
 struct rockchip_pinctrl* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
					      struct pinctrl_gpio_range *range,
					      unsigned offset, bool input)
{
	struct rockchip_pinctrl *info = FUNC2(pctldev);
	struct gpio_chip *chip;
	int pin;

	chip = range->gc;
	pin = offset - chip->base;
	FUNC1(info->dev, "gpio_direction for pin %u as %s-%d to %s\n",
		 offset, range->name, pin, input ? "input" : "output");

	return FUNC0(chip, offset - chip->base,
						input);
}