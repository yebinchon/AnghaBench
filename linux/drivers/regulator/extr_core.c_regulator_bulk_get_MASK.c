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
struct regulator_bulk_data {int /*<<< orphan*/ * consumer; int /*<<< orphan*/  supply; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct device *dev, int num_consumers,
		       struct regulator_bulk_data *consumers)
{
	int i;
	int ret;

	for (i = 0; i < num_consumers; i++)
		consumers[i].consumer = NULL;

	for (i = 0; i < num_consumers; i++) {
		consumers[i].consumer = FUNC4(dev,
						      consumers[i].supply);
		if (FUNC0(consumers[i].consumer)) {
			ret = FUNC1(consumers[i].consumer);
			consumers[i].consumer = NULL;
			goto err;
		}
	}

	return 0;

err:
	if (ret != -EPROBE_DEFER)
		FUNC3(dev, "Failed to get supply '%s': %d\n",
			consumers[i].supply, ret);
	else
		FUNC2(dev, "Failed to get supply '%s', deferring\n",
			consumers[i].supply);

	while (--i >= 0)
		FUNC5(consumers[i].consumer);

	return ret;
}