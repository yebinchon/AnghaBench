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
struct gpio_chip {int dummy; } ;
struct axp20x_pctl {TYPE_1__* desc; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {scalar_t__ gpio_status_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_GPIO20_SS ; 
 unsigned int FUNC0 (scalar_t__) ; 
 struct axp20x_pctl* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct axp20x_pctl *pctl = FUNC1(chip);
	unsigned int val;
	int ret;

	ret = FUNC2(pctl->regmap, AXP20X_GPIO20_SS, &val);
	if (ret)
		return ret;

	return !!(val & FUNC0(offset + pctl->desc->gpio_status_offset));
}