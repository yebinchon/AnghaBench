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
struct gb_power_supply {int properties_count; int /*<<< orphan*/  last_update; TYPE_1__* props; } ;
struct gb_connection {int /*<<< orphan*/  bundle; } ;
struct TYPE_2__ {int /*<<< orphan*/  prop; } ;

/* Variables and functions */
 int FUNC0 (struct gb_power_supply*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gb_connection* FUNC3 (struct gb_power_supply*) ; 
 scalar_t__ FUNC4 (struct gb_power_supply*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static int FUNC5(struct gb_power_supply *gbpsy)
{
	struct gb_connection *connection = FUNC3(gbpsy);
	int ret = 0;
	int i;

	if (FUNC4(gbpsy))
		return 0;

	ret = FUNC1(connection->bundle);
	if (ret)
		return ret;

	for (i = 0; i < gbpsy->properties_count; i++) {
		ret = FUNC0(gbpsy,
							gbpsy->props[i].prop);
		if (ret < 0)
			break;
	}

	if (ret == 0)
		gbpsy->last_update = jiffies;

	FUNC2(connection->bundle);
	return ret;
}