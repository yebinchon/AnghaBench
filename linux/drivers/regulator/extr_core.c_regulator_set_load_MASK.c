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
struct regulator_dev {int dummy; } ;
struct regulator {int uA_load; scalar_t__ enable_count; struct regulator_dev* rdev; } ;

/* Variables and functions */
 int FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 

int FUNC3(struct regulator *regulator, int uA_load)
{
	struct regulator_dev *rdev = regulator->rdev;
	int old_uA_load;
	int ret = 0;

	FUNC1(rdev);
	old_uA_load = regulator->uA_load;
	regulator->uA_load = uA_load;
	if (regulator->enable_count && old_uA_load != uA_load) {
		ret = FUNC0(rdev);
		if (ret < 0)
			regulator->uA_load = old_uA_load;
	}
	FUNC2(rdev);

	return ret;
}