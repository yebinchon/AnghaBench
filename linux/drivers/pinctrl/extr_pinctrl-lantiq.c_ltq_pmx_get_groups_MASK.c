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
struct ltq_pinmux_info {TYPE_1__* funcs; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;

/* Variables and functions */
 struct ltq_pinmux_info* FUNC0 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC1(struct pinctrl_dev *pctrldev,
				unsigned func,
				const char * const **groups,
				unsigned * const num_groups)
{
	struct ltq_pinmux_info *info = FUNC0(pctrldev);

	*groups = info->funcs[func].groups;
	*num_groups = info->funcs[func].num_groups;

	return 0;
}