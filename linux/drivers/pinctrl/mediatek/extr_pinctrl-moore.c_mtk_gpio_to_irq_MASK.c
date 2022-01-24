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
typedef  scalar_t__ u16 ;
struct mtk_pinctrl {int /*<<< orphan*/  eint; TYPE_1__* soc; } ;
struct TYPE_4__ {scalar_t__ eint_n; } ;
struct mtk_pin_desc {TYPE_2__ eint; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 scalar_t__ EINT_NA ; 
 int ENOTSUPP ; 
 struct mtk_pinctrl* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned int offset)
{
	struct mtk_pinctrl *hw = FUNC0(chip);
	const struct mtk_pin_desc *desc;

	if (!hw->eint)
		return -ENOTSUPP;

	desc = (const struct mtk_pin_desc *)&hw->soc->pins[offset];

	if (desc->eint.eint_n == (u16)EINT_NA)
		return -ENOTSUPP;

	return FUNC1(hw->eint, desc->eint.eint_n);
}