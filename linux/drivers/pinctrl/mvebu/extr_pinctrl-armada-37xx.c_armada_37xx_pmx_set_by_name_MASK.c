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
struct armada_37xx_pinctrl {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct armada_37xx_pin_group {unsigned int reg_mask; int* val; int /*<<< orphan*/  funcs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  NB_FUNCS ; 
 unsigned int SELECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 struct armada_37xx_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev,
				       const char *name,
				       struct armada_37xx_pin_group *grp)
{
	struct armada_37xx_pinctrl *info = FUNC2(pctldev);
	unsigned int reg = SELECTION;
	unsigned int mask = grp->reg_mask;
	int func, val;

	FUNC0(info->dev, "enable function %s group %s\n",
		name, grp->name);

	func = FUNC1(grp->funcs, NB_FUNCS, name);
	if (func < 0)
		return -ENOTSUPP;

	val = grp->val[func];

	FUNC3(info->regmap, reg, mask, val);

	return 0;
}