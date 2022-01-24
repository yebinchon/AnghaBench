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
typedef  union power_supply_propval {int dummy; } power_supply_propval ;
struct gb_power_supply {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct gb_power_supply*,int,union power_supply_propval*) ; 
 int FUNC1 (struct gb_power_supply*,int,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct gb_connection* FUNC3 (struct gb_power_supply*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct gb_power_supply *gbpsy,
					 enum power_supply_property psp,
					 union power_supply_propval *val)
{
	struct gb_connection *connection = FUNC3(gbpsy);
	int ret;

	/*
	 * Properties of type const char *, were already fetched on
	 * get_description operation and should be cached in gb
	 */
	if (FUNC4(psp))
		ret = FUNC0(gbpsy, psp, val);
	else
		ret = FUNC1(gbpsy, psp, val);

	if (ret < 0)
		FUNC2(&connection->bundle->dev, "get property %u\n", psp);

	return 0;
}