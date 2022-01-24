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
typedef  int /*<<< orphan*/  u32 ;
struct thermal_instance {unsigned long target; int /*<<< orphan*/  tz; } ;
struct thermal_cooling_device {int updated; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power2state ) (struct thermal_cooling_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct thermal_cooling_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct thermal_cooling_device*) ; 

int FUNC5(struct thermal_cooling_device *cdev,
			  struct thermal_instance *instance, u32 power)
{
	unsigned long state;
	int ret;

	if (!FUNC0(cdev))
		return -EINVAL;

	ret = cdev->ops->power2state(cdev, instance->tz, power, &state);
	if (ret)
		return ret;

	instance->target = state;
	FUNC1(&cdev->lock);
	cdev->updated = false;
	FUNC2(&cdev->lock);
	FUNC4(cdev);

	return 0;
}