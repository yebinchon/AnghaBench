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
struct gb_power_supply_set_property_request {int /*<<< orphan*/  prop_val; int /*<<< orphan*/  property; int /*<<< orphan*/  psy_id; } ;
struct gb_power_supply_prop {int val; int /*<<< orphan*/  gb_prop; } ;
struct gb_power_supply {int /*<<< orphan*/  id; } ;
struct gb_connection {int /*<<< orphan*/  bundle; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  req ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GB_POWER_SUPPLY_TYPE_SET_PROPERTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gb_connection*,int /*<<< orphan*/ ,struct gb_power_supply_set_property_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct gb_connection* FUNC4 (struct gb_power_supply*) ; 
 struct gb_power_supply_prop* FUNC5 (struct gb_power_supply*,int) ; 

__attribute__((used)) static int FUNC6(struct gb_power_supply *gbpsy,
					enum power_supply_property psp,
					int val)
{
	struct gb_connection *connection = FUNC4(gbpsy);
	struct gb_power_supply_prop *prop;
	struct gb_power_supply_set_property_request req;
	int ret;

	ret = FUNC2(connection->bundle);
	if (ret)
		return ret;

	prop = FUNC5(gbpsy, psp);
	if (!prop) {
		ret = -EINVAL;
		goto out;
	}

	req.psy_id = gbpsy->id;
	req.property = prop->gb_prop;
	req.prop_val = FUNC0((s32)val);

	ret = FUNC1(connection, GB_POWER_SUPPLY_TYPE_SET_PROPERTY,
				&req, sizeof(req), NULL, 0);
	if (ret < 0)
		goto out;

	/* cache immediately the new value */
	prop->val = val;

out:
	FUNC3(connection->bundle);
	return ret;
}