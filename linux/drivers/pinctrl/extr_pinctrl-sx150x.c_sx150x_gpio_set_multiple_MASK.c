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
 struct sx150x_pinctrl* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip,
				     unsigned long *mask,
				     unsigned long *bits)
{
	struct sx150x_pinctrl *pctl = FUNC0(chip);

	FUNC1(pctl->regmap, pctl->data->reg_data, *mask, *bits);
}