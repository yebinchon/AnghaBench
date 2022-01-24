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

/* Variables and functions */
 int EINVAL ; 
 int NOTIFY_STOP_MASK ; 
 int REGULATOR_EVENT_ABORT_DISABLE ; 
 int REGULATOR_EVENT_DISABLE ; 
 int REGULATOR_EVENT_FORCE_DISABLE ; 
 int REGULATOR_EVENT_PRE_DISABLE ; 
 int FUNC0 (struct regulator_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*,char*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	int ret = 0;

	FUNC2(&rdev->mutex.base);

	ret = FUNC0(rdev, REGULATOR_EVENT_FORCE_DISABLE |
			REGULATOR_EVENT_PRE_DISABLE, NULL);
	if (ret & NOTIFY_STOP_MASK)
		return -EINVAL;

	ret = FUNC1(rdev);
	if (ret < 0) {
		FUNC3(rdev, "failed to force disable\n");
		FUNC0(rdev, REGULATOR_EVENT_FORCE_DISABLE |
				REGULATOR_EVENT_ABORT_DISABLE, NULL);
		return ret;
	}

	FUNC0(rdev, REGULATOR_EVENT_FORCE_DISABLE |
			REGULATOR_EVENT_DISABLE, NULL);

	return 0;
}