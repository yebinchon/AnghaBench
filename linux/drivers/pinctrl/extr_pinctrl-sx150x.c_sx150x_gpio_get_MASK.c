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
struct sx150x_pinctrl {TYPE_1__* data; int /*<<< orphan*/  regmap; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 struct sx150x_pinctrl* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC3 (struct sx150x_pinctrl*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int offset)
{
	struct sx150x_pinctrl *pctl = FUNC1(chip);
	unsigned int value;
	int ret;

	if (FUNC3(pctl, offset))
		return -EINVAL;

	ret = FUNC2(pctl->regmap, pctl->data->reg_data, &value);
	if (ret < 0)
		return ret;

	return !!(value & FUNC0(offset));
}