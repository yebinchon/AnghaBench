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
struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mvebu_pinctrl_group {int num_settings; struct mvebu_mpp_ctrl_setting* settings; } ;
struct mvebu_pinctrl {int variant; struct mvebu_pinctrl_group* groups; } ;
struct mvebu_mpp_ctrl_setting {int flags; int variant; scalar_t__ subname; scalar_t__ name; } ;

/* Variables and functions */
 int MVEBU_SETTING_GPI ; 
 int MVEBU_SETTING_GPO ; 
 scalar_t__ FUNC0 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 
 struct mvebu_mpp_ctrl_setting* FUNC1 (struct mvebu_pinctrl*,struct mvebu_pinctrl_group*,unsigned long) ; 
 struct mvebu_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC6(struct pinctrl_dev *pctldev,
					struct seq_file *s, unsigned gid)
{
	struct mvebu_pinctrl *pctl = FUNC2(pctldev);
	struct mvebu_pinctrl_group *grp = &pctl->groups[gid];
	struct mvebu_mpp_ctrl_setting *curr;
	unsigned long config;
	unsigned n;

	if (FUNC0(pctldev, gid, &config))
		return;

	curr = FUNC1(pctl, grp, config);

	if (curr) {
		FUNC3(s, "current: %s", curr->name);
		if (curr->subname)
			FUNC3(s, "(%s)", curr->subname);
		if (curr->flags & (MVEBU_SETTING_GPO | MVEBU_SETTING_GPI)) {
			FUNC4(s, '(');
			if (curr->flags & MVEBU_SETTING_GPI)
				FUNC4(s, 'i');
			if (curr->flags & MVEBU_SETTING_GPO)
				FUNC4(s, 'o');
			FUNC4(s, ')');
		}
	} else {
		FUNC5(s, "current: UNKNOWN");
	}

	if (grp->num_settings > 1) {
		FUNC5(s, ", available = [");
		for (n = 0; n < grp->num_settings; n++) {
			if (curr == &grp->settings[n])
				continue;

			/* skip unsupported settings for this variant */
			if (pctl->variant &&
			    !(pctl->variant & grp->settings[n].variant))
				continue;

			FUNC3(s, " %s", grp->settings[n].name);
			if (grp->settings[n].subname)
				FUNC3(s, "(%s)", grp->settings[n].subname);
			if (grp->settings[n].flags &
				(MVEBU_SETTING_GPO | MVEBU_SETTING_GPI)) {
				FUNC4(s, '(');
				if (grp->settings[n].flags & MVEBU_SETTING_GPI)
					FUNC4(s, 'i');
				if (grp->settings[n].flags & MVEBU_SETTING_GPO)
					FUNC4(s, 'o');
				FUNC4(s, ')');
			}
		}
		FUNC5(s, " ]");
	}
}