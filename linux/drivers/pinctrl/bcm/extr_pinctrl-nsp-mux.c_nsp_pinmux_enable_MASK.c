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
struct nsp_pinctrl {unsigned int num_groups; unsigned int num_functions; int /*<<< orphan*/  mux_log; struct nsp_pin_group* groups; struct nsp_pin_function* functions; } ;
struct TYPE_2__ {int /*<<< orphan*/  alt; int /*<<< orphan*/  shift; } ;
struct nsp_pin_group {TYPE_1__ mux; int /*<<< orphan*/  name; } ;
struct nsp_pin_function {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (struct nsp_pinctrl*,struct nsp_pin_function const*,struct nsp_pin_group const*,int /*<<< orphan*/ ) ; 
 struct nsp_pinctrl* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctrl_dev,
			     unsigned int func_select, unsigned int grp_select)
{
	struct nsp_pinctrl *pinctrl = FUNC2(pctrl_dev);
	const struct nsp_pin_function *func;
	const struct nsp_pin_group *grp;

	if (grp_select >= pinctrl->num_groups ||
	    func_select >= pinctrl->num_functions)
		return -EINVAL;

	func = &pinctrl->functions[func_select];
	grp = &pinctrl->groups[grp_select];

	FUNC0(pctrl_dev->dev, "func:%u name:%s grp:%u name:%s\n",
		func_select, func->name, grp_select, grp->name);

	FUNC0(pctrl_dev->dev, "shift:%u alt:%u\n", grp->mux.shift,
		grp->mux.alt);

	return FUNC1(pinctrl, func, grp, pinctrl->mux_log);
}