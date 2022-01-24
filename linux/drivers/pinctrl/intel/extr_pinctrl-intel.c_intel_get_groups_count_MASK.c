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
struct intel_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {int ngroups; } ;

/* Variables and functions */
 struct intel_pinctrl* FUNC0 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC1(struct pinctrl_dev *pctldev)
{
	struct intel_pinctrl *pctrl = FUNC0(pctldev);

	return pctrl->soc->ngroups;
}