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
struct gb_power_supply {int dummy; } ;
struct gb_power_supplies {int supplies_count; int /*<<< orphan*/  supplies_lock; int /*<<< orphan*/  supply; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct gb_power_supplies*) ; 
 int FUNC2 (struct gb_power_supplies*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gb_power_supplies *supplies)
{
	struct gb_connection *connection = supplies->connection;
	int ret;
	int i;

	FUNC4(&supplies->supplies_lock);

	ret = FUNC1(supplies);
	if (ret < 0)
		goto out;

	supplies->supply = FUNC3(supplies->supplies_count,
				     sizeof(struct gb_power_supply),
				     GFP_KERNEL);

	if (!supplies->supply) {
		ret = -ENOMEM;
		goto out;
	}

	for (i = 0; i < supplies->supplies_count; i++) {
		ret = FUNC2(supplies, i);
		if (ret < 0) {
			FUNC0(&connection->bundle->dev,
				"Fail to configure supplies devices\n");
			goto out;
		}
	}
out:
	FUNC5(&supplies->supplies_lock);
	return ret;
}