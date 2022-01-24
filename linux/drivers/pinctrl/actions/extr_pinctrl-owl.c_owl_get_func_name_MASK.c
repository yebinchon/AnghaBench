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
struct pinctrl_dev {int dummy; } ;
struct owl_pinctrl {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char const* name; } ;

/* Variables and functions */
 struct owl_pinctrl* FUNC0 (struct pinctrl_dev*) ; 

__attribute__((used)) static const char *FUNC1(struct pinctrl_dev *pctrldev,
				unsigned int function)
{
	struct owl_pinctrl *pctrl = FUNC0(pctrldev);

	return pctrl->soc->functions[function].name;
}