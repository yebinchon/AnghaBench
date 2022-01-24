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
struct TYPE_2__ {int /*<<< orphan*/  pctrl; } ;

/* Variables and functions */
 TYPE_1__ falcon_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pinctrl_gpio_range*) ; 

void FUNC1(struct pinctrl_gpio_range *range)
{
	FUNC0(falcon_info.pctrl, range);
}