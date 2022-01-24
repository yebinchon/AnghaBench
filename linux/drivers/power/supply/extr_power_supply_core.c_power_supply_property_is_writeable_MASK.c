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
struct power_supply {TYPE_1__* desc; int /*<<< orphan*/  use_cnt; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int (* property_is_writeable ) (struct power_supply*,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct power_supply*,int) ; 

int FUNC2(struct power_supply *psy,
					enum power_supply_property psp)
{
	if (FUNC0(&psy->use_cnt) <= 0 ||
			!psy->desc->property_is_writeable)
		return -ENODEV;

	return psy->desc->property_is_writeable(psy, psp);
}