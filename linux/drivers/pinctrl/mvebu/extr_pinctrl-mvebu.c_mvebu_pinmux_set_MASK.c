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
struct mvebu_pinctrl_group {int /*<<< orphan*/  gid; } ;
struct mvebu_pinctrl_function {int /*<<< orphan*/  name; int /*<<< orphan*/ * groups; } ;
struct mvebu_pinctrl {int /*<<< orphan*/  dev; struct mvebu_pinctrl_group* groups; struct mvebu_pinctrl_function* functions; } ;
struct mvebu_mpp_ctrl_setting {unsigned long val; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pinctrl_dev*,int /*<<< orphan*/ ,unsigned long*,int) ; 
 struct mvebu_mpp_ctrl_setting* FUNC2 (struct mvebu_pinctrl*,struct mvebu_pinctrl_group*,int /*<<< orphan*/ ) ; 
 struct mvebu_pinctrl* FUNC3 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev, unsigned fid,
			    unsigned gid)
{
	struct mvebu_pinctrl *pctl = FUNC3(pctldev);
	struct mvebu_pinctrl_function *func = &pctl->functions[fid];
	struct mvebu_pinctrl_group *grp = &pctl->groups[gid];
	struct mvebu_mpp_ctrl_setting *setting;
	int ret;
	unsigned long config;

	setting = FUNC2(pctl, grp,
						     func->name);
	if (!setting) {
		FUNC0(pctl->dev,
			"unable to find setting %s in group %s\n",
			func->name, func->groups[gid]);
		return -EINVAL;
	}

	config = setting->val;
	ret = FUNC1(pctldev, grp->gid, &config, 1);
	if (ret) {
		FUNC0(pctl->dev, "cannot set group %s to %s\n",
			func->groups[gid], func->name);
		return ret;
	}

	return 0;
}