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
struct rza1_pinctrl {int dummy; } ;
struct rza1_mux_conf {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct group_desc {int num_pins; } ;
struct function_desc {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 struct rza1_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 struct group_desc* FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 struct function_desc* FUNC2 (struct pinctrl_dev*,unsigned int) ; 
 int FUNC3 (struct rza1_pinctrl*,struct rza1_mux_conf*) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev, unsigned int selector,
			   unsigned int group)
{
	struct rza1_pinctrl *rza1_pctl = FUNC0(pctldev);
	struct rza1_mux_conf *mux_confs;
	struct function_desc *func;
	struct group_desc *grp;
	int i;

	grp = FUNC1(pctldev, group);
	if (!grp)
		return -EINVAL;

	func = FUNC2(pctldev, selector);
	if (!func)
		return -EINVAL;

	mux_confs = (struct rza1_mux_conf *)func->data;
	for (i = 0; i < grp->num_pins; ++i) {
		int ret;

		ret = FUNC3(rza1_pctl, &mux_confs[i]);
		if (ret)
			return ret;
	}

	return 0;
}