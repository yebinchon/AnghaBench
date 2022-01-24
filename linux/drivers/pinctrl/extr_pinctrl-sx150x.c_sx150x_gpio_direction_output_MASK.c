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
struct TYPE_2__ {int /*<<< orphan*/  reg_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (struct sx150x_pinctrl*,unsigned int,int) ; 
 struct sx150x_pinctrl* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sx150x_pinctrl*,int) ; 
 scalar_t__ FUNC5 (struct sx150x_pinctrl*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
					unsigned int offset, int value)
{
	struct sx150x_pinctrl *pctl = FUNC2(chip);
	int ret;

	if (FUNC5(pctl, offset))
		return FUNC4(pctl, value);

	ret = FUNC1(pctl, offset, value);
	if (ret < 0)
		return ret;

	return FUNC3(pctl->regmap,
				 pctl->data->reg_dir,
				 FUNC0(offset), 0);
}