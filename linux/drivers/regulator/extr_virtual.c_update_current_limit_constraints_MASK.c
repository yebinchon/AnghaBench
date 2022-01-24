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
struct virtual_consumer_data {scalar_t__ max_uA; scalar_t__ min_uA; int enabled; int /*<<< orphan*/  regulator; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
					  struct virtual_consumer_data *data)
{
	int ret;

	if (data->max_uA
	    && data->min_uA <= data->max_uA) {
		FUNC0(dev, "Requesting %d-%duA\n",
			data->min_uA, data->max_uA);
		ret = FUNC4(data->regulator,
					data->min_uA, data->max_uA);
		if (ret != 0) {
			FUNC1(dev,
				"regulator_set_current_limit() failed: %d\n",
				ret);
			return;
		}
	}

	if (data->max_uA && !data->enabled) {
		FUNC0(dev, "Enabling regulator\n");
		ret = FUNC3(data->regulator);
		if (ret == 0)
			data->enabled = true;
		else
			FUNC1(dev, "regulator_enable() failed: %d\n",
				ret);
	}

	if (!(data->min_uA && data->max_uA) && data->enabled) {
		FUNC0(dev, "Disabling regulator\n");
		ret = FUNC2(data->regulator);
		if (ret == 0)
			data->enabled = false;
		else
			FUNC1(dev, "regulator_disable() failed: %d\n",
				ret);
	}
}