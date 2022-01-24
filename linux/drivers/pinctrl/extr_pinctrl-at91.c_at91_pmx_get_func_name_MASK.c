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
struct at91_pinctrl {TYPE_1__* functions; } ;
struct TYPE_2__ {char const* name; } ;

/* Variables and functions */
 struct at91_pinctrl* FUNC0 (struct pinctrl_dev*) ; 

__attribute__((used)) static const char *FUNC1(struct pinctrl_dev *pctldev,
					  unsigned selector)
{
	struct at91_pinctrl *info = FUNC0(pctldev);

	return info->functions[selector].name;
}