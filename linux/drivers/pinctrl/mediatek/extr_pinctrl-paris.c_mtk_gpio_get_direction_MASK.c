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
struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  PINCTRL_PIN_REG_DIR ; 
 struct mtk_pinctrl* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned int gpio)
{
	struct mtk_pinctrl *hw = FUNC0(chip);
	const struct mtk_pin_desc *desc;
	int value, err;

	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];

	err = FUNC1(hw, desc, PINCTRL_PIN_REG_DIR, &value);
	if (err)
		return err;

	return !value;
}