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
struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {unsigned int dout_offset; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,struct mtk_pinctrl*) ; 
 unsigned int FUNC2 (unsigned int,struct mtk_pinctrl*) ; 
 struct mtk_pinctrl* FUNC3 (struct gpio_chip*) ; 
 unsigned int FUNC4 (struct mtk_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct gpio_chip *chip, unsigned offset, int value)
{
	unsigned int reg_addr;
	unsigned int bit;
	struct mtk_pinctrl *pctl = FUNC3(chip);

	reg_addr = FUNC4(pctl, offset) + pctl->devdata->dout_offset;
	bit = FUNC0(offset & 0xf);

	if (value)
		reg_addr = FUNC2(reg_addr, pctl);
	else
		reg_addr = FUNC1(reg_addr, pctl);

	FUNC6(FUNC5(pctl, offset), reg_addr, bit);
}