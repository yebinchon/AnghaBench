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
struct axp20x_pctl {TYPE_1__* funcs; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;

/* Variables and functions */
 struct axp20x_pctl* FUNC0 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC1(struct pinctrl_dev *pctldev,
				  unsigned int selector,
				  const char * const **groups,
				  unsigned int *num_groups)
{
	struct axp20x_pctl *pctl = FUNC0(pctldev);

	*groups = pctl->funcs[selector].groups;
	*num_groups = pctl->funcs[selector].ngroups;

	return 0;
}