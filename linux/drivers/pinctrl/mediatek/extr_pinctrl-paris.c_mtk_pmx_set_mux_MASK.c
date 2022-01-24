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
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl_group {size_t pin; } ;
struct mtk_pinctrl {TYPE_1__* soc; int /*<<< orphan*/  dev; struct mtk_pinctrl_group* groups; } ;
struct mtk_pin_desc {int dummy; } ;
struct mtk_func_desc {int /*<<< orphan*/  muxval; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PINCTRL_PIN_REG_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_func_desc* FUNC2 (struct mtk_pinctrl*,size_t,unsigned int) ; 
 int FUNC3 (struct mtk_pinctrl*,size_t,unsigned int) ; 
 struct mtk_pinctrl* FUNC4 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
			   unsigned function,
			   unsigned group)
{
	struct mtk_pinctrl *hw = FUNC4(pctldev);
	struct mtk_pinctrl_group *grp = hw->groups + group;
	const struct mtk_func_desc *desc_func;
	const struct mtk_pin_desc *desc;
	bool ret;

	ret = FUNC3(hw, grp->pin, function);
	if (!ret) {
		FUNC0(hw->dev, "invalid function %d on group %d .\n",
			function, group);
		return -EINVAL;
	}

	desc_func = FUNC2(hw, grp->pin, function);
	if (!desc_func)
		return -EINVAL;

	desc = (const struct mtk_pin_desc *)&hw->soc->pins[grp->pin];
	FUNC1(hw, desc, PINCTRL_PIN_REG_MODE, desc_func->muxval);

	return 0;
}