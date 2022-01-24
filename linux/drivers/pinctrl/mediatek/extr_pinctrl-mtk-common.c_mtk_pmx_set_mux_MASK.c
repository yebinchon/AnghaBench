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
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl_group {int /*<<< orphan*/  pin; } ;
struct mtk_pinctrl {int /*<<< orphan*/  dev; struct mtk_pinctrl_group* groups; } ;
struct mtk_desc_function {int /*<<< orphan*/  muxval; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 struct mtk_desc_function* FUNC1 (struct mtk_pinctrl*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct mtk_pinctrl*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pinctrl_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_pinctrl* FUNC4 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
			    unsigned function,
			    unsigned group)
{
	bool ret;
	const struct mtk_desc_function *desc;
	struct mtk_pinctrl *pctl = FUNC4(pctldev);
	struct mtk_pinctrl_group *g = pctl->groups + group;

	ret = FUNC2(pctl, g->pin, function);
	if (!ret) {
		FUNC0(pctl->dev, "invalid function %d on group %d .\n",
				function, group);
		return -EINVAL;
	}

	desc = FUNC1(pctl, g->pin, function);
	if (!desc)
		return -EINVAL;
	FUNC3(pctldev, g->pin, desc->muxval);
	return 0;
}