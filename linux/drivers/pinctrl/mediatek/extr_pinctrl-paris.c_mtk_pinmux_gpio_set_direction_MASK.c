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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  PINCTRL_PIN_REG_DIR ; 
 int FUNC0 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int /*<<< orphan*/ ,int) ; 
 struct mtk_pinctrl* FUNC1 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
					 struct pinctrl_gpio_range *range,
					 unsigned int pin, bool input)
{
	struct mtk_pinctrl *hw = FUNC1(pctldev);
	const struct mtk_pin_desc *desc;

	desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];

	/* hardware would take 0 as input direction */
	return FUNC0(hw, desc, PINCTRL_PIN_REG_DIR, !input);
}