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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct regulator_dev {TYPE_1__ mutex; } ;
struct regulator {scalar_t__ enable_count; scalar_t__ uA_load; struct regulator_dev* rdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*,char*) ; 

__attribute__((used)) static int FUNC3(struct regulator *regulator)
{
	struct regulator_dev *rdev = regulator->rdev;

	FUNC1(&rdev->mutex.base);

	if (!regulator->enable_count) {
		FUNC2(rdev, "Underflow of regulator enable count\n");
		return -EINVAL;
	}

	regulator->enable_count--;
	if (regulator->uA_load && regulator->enable_count == 0)
		return FUNC0(rdev);

	return 0;
}