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
typedef  int /*<<< orphan*/  u32 ;
struct pinctrl_gpio_range {int /*<<< orphan*/  gc; } ;
struct pinctrl_dev {int dummy; } ;
struct pic32_pinctrl {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int base; } ;
struct pic32_gpio_bank {scalar_t__ reg_base; TYPE_1__ gpio_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANSEL_REG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 struct pic32_gpio_bank* FUNC3 (int /*<<< orphan*/ ) ; 
 struct pic32_pinctrl* FUNC4 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev,
				     struct pinctrl_gpio_range *range,
				     unsigned offset)
{
	struct pic32_pinctrl *pctl = FUNC4(pctldev);
	struct pic32_gpio_bank *bank = FUNC3(range->gc);
	u32 mask = FUNC0(offset - bank->gpio_chip.base);

	FUNC2(pctl->dev, "requesting gpio %d in bank %d with mask 0x%x\n",
		offset, bank->gpio_chip.base, mask);

	FUNC5(mask, bank->reg_base + FUNC1(ANSEL_REG));

	return 0;
}