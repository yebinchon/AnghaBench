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
struct rzn1_pinctrl {int /*<<< orphan*/  dev; struct rzn1_pin_group* groups; } ;
struct rzn1_pin_group {unsigned int npins; unsigned int* pins; int /*<<< orphan*/  name; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned long*,unsigned int) ; 
 struct rzn1_pinctrl* FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (struct pinctrl_dev*,unsigned int,unsigned long*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
				  unsigned int selector,
				  unsigned long *configs,
				  unsigned int num_configs)
{
	struct rzn1_pinctrl *ipctl = FUNC1(pctldev);
	struct rzn1_pin_group *grp = &ipctl->groups[selector];
	unsigned int i;
	int ret;

	FUNC0(ipctl->dev, "group set %s selector:%u configs:%p/%d\n",
		grp->name, selector, configs, num_configs);

	for (i = 0; i < grp->npins; i++) {
		unsigned int pin = grp->pins[i];

		ret = FUNC2(pctldev, pin, configs, num_configs);
		if (ret)
			return ret;
	}

	return 0;
}