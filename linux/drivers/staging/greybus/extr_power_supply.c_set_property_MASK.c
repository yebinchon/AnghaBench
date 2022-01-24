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
union power_supply_propval {int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct gb_power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int FUNC0 (struct gb_power_supply*,int,int /*<<< orphan*/ ) ; 
 struct gb_power_supply* FUNC1 (struct power_supply*) ; 

__attribute__((used)) static int FUNC2(struct power_supply *b,
			enum power_supply_property psp,
			const union power_supply_propval *val)
{
	struct gb_power_supply *gbpsy = FUNC1(b);

	return FUNC0(gbpsy, psp, val->intval);
}