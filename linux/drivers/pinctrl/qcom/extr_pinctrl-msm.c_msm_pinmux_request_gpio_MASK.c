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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct msm_pingroup {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  nfuncs; } ;
struct msm_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {struct msm_pingroup* groups; } ;

/* Variables and functions */
 int FUNC0 (struct pinctrl_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 struct msm_pinctrl* FUNC1 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
				   struct pinctrl_gpio_range *range,
				   unsigned offset)
{
	struct msm_pinctrl *pctrl = FUNC1(pctldev);
	const struct msm_pingroup *g = &pctrl->soc->groups[offset];

	/* No funcs? Probably ACPI so can't do anything here */
	if (!g->nfuncs)
		return 0;

	/* For now assume function 0 is GPIO because it always is */
	return FUNC0(pctldev, g->funcs[0], offset);
}