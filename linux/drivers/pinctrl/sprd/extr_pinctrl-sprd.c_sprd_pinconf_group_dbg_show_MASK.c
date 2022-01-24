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
struct sprd_pinctrl_soc_info {unsigned int ngroups; struct sprd_pin_group* groups; } ;
struct sprd_pinctrl {struct sprd_pinctrl_soc_info* info; } ;
struct sprd_pin_group {int npins; unsigned int* pins; } ;
struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct pinctrl_dev*,unsigned int) ; 
 struct sprd_pinctrl* FUNC1 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int FUNC4 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 

__attribute__((used)) static void FUNC5(struct pinctrl_dev *pctldev,
					struct seq_file *s,
					unsigned int selector)
{
	struct sprd_pinctrl *pctl = FUNC1(pctldev);
	struct sprd_pinctrl_soc_info *info = pctl->info;
	struct sprd_pin_group *grp;
	unsigned long config;
	const char *name;
	int i, ret;

	if (selector >= info->ngroups)
		return;

	grp = &info->groups[selector];

	FUNC3(s, '\n');
	for (i = 0; i < grp->npins; i++, config++) {
		unsigned int pin_id = grp->pins[i];

		name = FUNC0(pctldev, pin_id);
		ret = FUNC4(pctldev, pin_id, &config);
		if (ret)
			return;

		FUNC2(s, "%s: 0x%lx ", name, config);
	}
}