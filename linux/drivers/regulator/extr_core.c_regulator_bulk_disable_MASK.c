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
struct regulator_bulk_data {int /*<<< orphan*/  supply; int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(int num_consumers,
			   struct regulator_bulk_data *consumers)
{
	int i;
	int ret, r;

	for (i = num_consumers - 1; i >= 0; --i) {
		ret = FUNC1(consumers[i].consumer);
		if (ret != 0)
			goto err;
	}

	return 0;

err:
	FUNC0("Failed to disable %s: %d\n", consumers[i].supply, ret);
	for (++i; i < num_consumers; ++i) {
		r = FUNC2(consumers[i].consumer);
		if (r != 0)
			FUNC0("Failed to re-enable %s: %d\n",
			       consumers[i].supply, r);
	}

	return ret;
}