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
struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {TYPE_1__* grps; } ;
struct TYPE_2__ {int npins; int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 struct ltq_pinmux_info* FUNC0 (struct pinctrl_dev*) ; 
 int FUNC1 (struct pinctrl_dev*,int /*<<< orphan*/ ,unsigned long*,unsigned int) ; 

int FUNC2(struct pinctrl_dev *pctldev,
			unsigned selector,
			unsigned long *configs,
			unsigned num_configs)
{
	struct ltq_pinmux_info *info = FUNC0(pctldev);
	int i, ret = 0;

	for (i = 0; i < info->grps[selector].npins && !ret; i++)
		ret = FUNC1(pctldev,
				info->grps[selector].pins[i],
				configs,
				num_configs);

	return ret;
}