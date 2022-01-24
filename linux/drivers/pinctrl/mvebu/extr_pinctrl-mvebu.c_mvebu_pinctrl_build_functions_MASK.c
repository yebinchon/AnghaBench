#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mvebu_pinctrl_group {int num_settings; char* name; TYPE_2__* settings; } ;
struct mvebu_pinctrl_function {char** groups; int num_groups; } ;
struct TYPE_3__ {int npins; } ;
struct mvebu_pinctrl {int num_groups; int variant; int num_functions; struct mvebu_pinctrl_group* groups; struct mvebu_pinctrl_function* functions; TYPE_1__ desc; } ;
struct TYPE_4__ {int variant; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mvebu_pinctrl_function*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct mvebu_pinctrl_function* FUNC3 (struct mvebu_pinctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
					 struct mvebu_pinctrl *pctl)
{
	struct mvebu_pinctrl_function *funcs;
	int num = 0, funcsize = pctl->desc.npins;
	int n, s;

	/* we allocate functions for number of pins and hope
	 * there are fewer unique functions than pins available */
	funcs = FUNC2(&pdev->dev,
			     funcsize, sizeof(struct mvebu_pinctrl_function),
			     GFP_KERNEL);
	if (!funcs)
		return -ENOMEM;

	for (n = 0; n < pctl->num_groups; n++) {
		struct mvebu_pinctrl_group *grp = &pctl->groups[n];
		for (s = 0; s < grp->num_settings; s++) {
			int ret;

			/* skip unsupported settings on this variant */
			if (pctl->variant &&
			    !(pctl->variant & grp->settings[s].variant))
				continue;

			/* check for unique functions and count groups */
			ret = FUNC0(funcs, &funcsize,
					    grp->settings[s].name);
			if (ret == -EOVERFLOW)
				FUNC1(&pdev->dev,
					"More functions than pins(%d)\n",
					pctl->desc.npins);
			if (ret < 0)
				continue;

			num++;
		}
	}

	pctl->num_functions = num;
	pctl->functions = funcs;

	for (n = 0; n < pctl->num_groups; n++) {
		struct mvebu_pinctrl_group *grp = &pctl->groups[n];
		for (s = 0; s < grp->num_settings; s++) {
			struct mvebu_pinctrl_function *f;
			const char **groups;

			/* skip unsupported settings on this variant */
			if (pctl->variant &&
			    !(pctl->variant & grp->settings[s].variant))
				continue;

			f = FUNC3(pctl,
							grp->settings[s].name);

			/* allocate group name array if not done already */
			if (!f->groups) {
				f->groups = FUNC2(&pdev->dev,
						 f->num_groups,
						 sizeof(char *),
						 GFP_KERNEL);
				if (!f->groups)
					return -ENOMEM;
			}

			/* find next free group name and assign current name */
			groups = f->groups;
			while (*groups)
				groups++;
			*groups = grp->name;
		}
	}

	return 0;
}