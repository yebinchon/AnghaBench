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
struct mvebu_pinctrl_group {int /*<<< orphan*/  gid; int /*<<< orphan*/  data; TYPE_1__* ctrl; } ;
struct mvebu_pinctrl {int dummy; } ;
struct mvebu_mpp_ctrl_setting {unsigned long val; } ;
struct TYPE_2__ {int (* mpp_gpio_req ) (int /*<<< orphan*/ ,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int FUNC0 (struct pinctrl_dev*,int /*<<< orphan*/ ,unsigned long*,int) ; 
 struct mvebu_mpp_ctrl_setting* FUNC1 (struct mvebu_pinctrl*,struct mvebu_pinctrl_group*) ; 
 struct mvebu_pinctrl_group* FUNC2 (struct mvebu_pinctrl*,unsigned int) ; 
 struct mvebu_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
			struct pinctrl_gpio_range *range, unsigned offset)
{
	struct mvebu_pinctrl *pctl = FUNC3(pctldev);
	struct mvebu_pinctrl_group *grp;
	struct mvebu_mpp_ctrl_setting *setting;
	unsigned long config;

	grp = FUNC2(pctl, offset);
	if (!grp)
		return -EINVAL;

	if (grp->ctrl->mpp_gpio_req)
		return grp->ctrl->mpp_gpio_req(grp->data, offset);

	setting = FUNC1(pctl, grp);
	if (!setting)
		return -ENOTSUPP;

	config = setting->val;

	return FUNC0(pctldev, grp->gid, &config, 1);
}