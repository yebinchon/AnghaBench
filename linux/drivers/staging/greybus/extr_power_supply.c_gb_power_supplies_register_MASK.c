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
struct gb_power_supplies {int supplies_count; int /*<<< orphan*/  supplies_lock; int /*<<< orphan*/ * supply; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gb_power_supplies *supplies)
{
	struct gb_connection *connection = supplies->connection;
	int ret = 0;
	int i;

	FUNC2(&supplies->supplies_lock);

	for (i = 0; i < supplies->supplies_count; i++) {
		ret = FUNC1(&supplies->supply[i]);
		if (ret < 0) {
			FUNC0(&connection->bundle->dev,
				"Fail to enable supplies devices\n");
			break;
		}
	}

	FUNC3(&supplies->supplies_lock);
	return ret;
}