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
struct regulator_bulk_data {int ret; int /*<<< orphan*/  consumer; int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  async_domain ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct regulator_bulk_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  regulator_bulk_enable_async ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int num_consumers,
			  struct regulator_bulk_data *consumers)
{
	FUNC0(async_domain);
	int i;
	int ret = 0;

	for (i = 0; i < num_consumers; i++) {
		FUNC1(regulator_bulk_enable_async,
				      &consumers[i], &async_domain);
	}

	FUNC2(&async_domain);

	/* If any consumer failed we need to unwind any that succeeded */
	for (i = 0; i < num_consumers; i++) {
		if (consumers[i].ret != 0) {
			ret = consumers[i].ret;
			goto err;
		}
	}

	return 0;

err:
	for (i = 0; i < num_consumers; i++) {
		if (consumers[i].ret < 0)
			FUNC3("Failed to enable %s: %d\n", consumers[i].supply,
			       consumers[i].ret);
		else
			FUNC4(consumers[i].consumer);
	}

	return ret;
}