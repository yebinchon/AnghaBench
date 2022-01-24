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
struct sprd_pin_group {unsigned int* pins; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct sprd_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 int FUNC1 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
				  unsigned int selector, unsigned long *config)
{
	struct sprd_pinctrl *pctl = FUNC0(pctldev);
	struct sprd_pinctrl_soc_info *info = pctl->info;
	struct sprd_pin_group *grp;
	unsigned int pin_id;

	if (selector >= info->ngroups)
		return -EINVAL;

	grp = &info->groups[selector];
	pin_id = grp->pins[0];

	return FUNC1(pctldev, pin_id, config);
}