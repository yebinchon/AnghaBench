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
struct wmt_pinctrl_data {char** groups; unsigned int ngroups; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 struct wmt_pinctrl_data* FUNC0 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC1(struct pinctrl_dev *pctldev,
				       unsigned selector,
				       const char * const **groups,
				       unsigned * const num_groups)
{
	struct wmt_pinctrl_data *data = FUNC0(pctldev);

	/* every pin does every function */
	*groups = data->groups;
	*num_groups = data->ngroups;

	return 0;
}