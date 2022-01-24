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
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct group_desc {int num_pins; int* data; int* pins; int /*<<< orphan*/  name; } ;
struct function_desc {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PINCTRL_PIN_REG_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int /*<<< orphan*/ ,int) ; 
 struct mtk_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 struct group_desc* FUNC3 (struct pinctrl_dev*,unsigned int) ; 
 struct function_desc* FUNC4 (struct pinctrl_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
			      unsigned int selector, unsigned int group)
{
	struct mtk_pinctrl *hw = FUNC2(pctldev);
	struct function_desc *func;
	struct group_desc *grp;
	int i;

	func = FUNC4(pctldev, selector);
	if (!func)
		return -EINVAL;

	grp = FUNC3(pctldev, group);
	if (!grp)
		return -EINVAL;

	FUNC0(pctldev->dev, "enable function %s group %s\n",
		func->name, grp->name);

	for (i = 0; i < grp->num_pins; i++) {
		const struct mtk_pin_desc *desc;
		int *pin_modes = grp->data;
		int pin = grp->pins[i];

		desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];

		FUNC1(hw, desc, PINCTRL_PIN_REG_MODE,
				 pin_modes[i]);
	}

	return 0;
}