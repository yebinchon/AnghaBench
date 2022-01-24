#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mtk_pinctrl {int /*<<< orphan*/  eint; TYPE_2__* soc; } ;
struct TYPE_3__ {scalar_t__ eint_n; } ;
struct mtk_pin_desc {TYPE_1__ eint; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 scalar_t__ EINT_NA ; 
 int ENOTSUPP ; 
 scalar_t__ PIN_CONFIG_INPUT_DEBOUNCE ; 
 struct mtk_pinctrl* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int offset,
			       unsigned long config)
{
	struct mtk_pinctrl *hw = FUNC0(chip);
	const struct mtk_pin_desc *desc;
	u32 debounce;

	desc = (const struct mtk_pin_desc *)&hw->soc->pins[offset];

	if (!hw->eint ||
	    FUNC3(config) != PIN_CONFIG_INPUT_DEBOUNCE ||
	    desc->eint.eint_n == EINT_NA)
		return -ENOTSUPP;

	debounce = FUNC2(config);

	return FUNC1(hw->eint, desc->eint.eint_n, debounce);
}