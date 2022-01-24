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
struct serdev_controller {int /*<<< orphan*/  dev; int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct serdev_controller*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  is_registered ; 
 int FUNC5 (struct serdev_controller*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct serdev_controller *ctrl)
{
	int ret_of, ret_acpi, ret;

	/* Can't register until after driver model init */
	if (FUNC0(!is_registered))
		return -EAGAIN;

	ret = FUNC3(&ctrl->dev);
	if (ret)
		return ret;

	FUNC7(&ctrl->dev);

	ret_of = FUNC5(ctrl);
	ret_acpi = FUNC1(ctrl);
	if (ret_of && ret_acpi) {
		FUNC2(&ctrl->dev, "no devices registered: of:%d acpi:%d\n",
			ret_of, ret_acpi);
		ret = -ENODEV;
		goto err_rpm_disable;
	}

	FUNC2(&ctrl->dev, "serdev%d registered: dev:%p\n",
		ctrl->nr, ctrl->dev);
	return 0;

err_rpm_disable:
	FUNC6(&ctrl->dev);
	FUNC4(&ctrl->dev);
	return ret;
}