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
struct uniphier_pinctrl_priv {TYPE_1__* socdata; } ;
struct uniphier_pinctrl_group {int num_pins; int /*<<< orphan*/ * muxvals; int /*<<< orphan*/ * pins; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {struct uniphier_pinctrl_group* groups; } ;

/* Variables and functions */
 struct uniphier_pinctrl_priv* FUNC0 (struct pinctrl_dev*) ; 
 int FUNC1 (struct pinctrl_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
				unsigned func_selector,
				unsigned group_selector)
{
	struct uniphier_pinctrl_priv *priv = FUNC0(pctldev);
	const struct uniphier_pinctrl_group *grp =
					&priv->socdata->groups[group_selector];
	int i;
	int ret;

	for (i = 0; i < grp->num_pins; i++) {
		ret = FUNC1(pctldev, grp->pins[i],
					       grp->muxvals[i]);
		if (ret)
			return ret;
	}

	return 0;
}