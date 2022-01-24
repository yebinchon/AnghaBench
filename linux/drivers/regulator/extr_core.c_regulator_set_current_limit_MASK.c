#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {TYPE_2__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_current_limit ) (struct regulator_dev*,int,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct regulator_dev*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*,int,int) ; 

int FUNC4(struct regulator *regulator,
			       int min_uA, int max_uA)
{
	struct regulator_dev *rdev = regulator->rdev;
	int ret;

	FUNC1(rdev);

	/* sanity check */
	if (!rdev->desc->ops->set_current_limit) {
		ret = -EINVAL;
		goto out;
	}

	/* constraints check */
	ret = FUNC0(rdev, &min_uA, &max_uA);
	if (ret < 0)
		goto out;

	ret = rdev->desc->ops->set_current_limit(rdev, min_uA, max_uA);
out:
	FUNC2(rdev);
	return ret;
}