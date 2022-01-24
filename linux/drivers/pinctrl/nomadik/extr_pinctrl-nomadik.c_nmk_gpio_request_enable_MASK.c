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
struct pinctrl_gpio_range {struct gpio_chip* gc; } ;
struct pinctrl_dev {int dummy; } ;
struct nmk_pinctrl {int /*<<< orphan*/  dev; } ;
struct nmk_gpio_chip {int /*<<< orphan*/  clk; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NMK_GPIO_ALT_GPIO ; 
 unsigned int NMK_GPIO_PER_CHIP ; 
 int /*<<< orphan*/  FUNC0 (struct nmk_gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct nmk_gpio_chip* FUNC5 (struct gpio_chip*) ; 
 struct nmk_pinctrl* FUNC6 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev,
				   struct pinctrl_gpio_range *range,
				   unsigned offset)
{
	struct nmk_pinctrl *npct = FUNC6(pctldev);
	struct nmk_gpio_chip *nmk_chip;
	struct gpio_chip *chip;
	unsigned bit;

	if (!range) {
		FUNC4(npct->dev, "invalid range\n");
		return -EINVAL;
	}
	if (!range->gc) {
		FUNC4(npct->dev, "missing GPIO chip in range\n");
		return -EINVAL;
	}
	chip = range->gc;
	nmk_chip = FUNC5(chip);

	FUNC3(npct->dev, "enable pin %u as GPIO\n", offset);

	FUNC2(nmk_chip->clk);
	bit = offset % NMK_GPIO_PER_CHIP;
	/* There is no glitch when converting any pin to GPIO */
	FUNC0(nmk_chip, bit, NMK_GPIO_ALT_GPIO);
	FUNC1(nmk_chip->clk);

	return 0;
}