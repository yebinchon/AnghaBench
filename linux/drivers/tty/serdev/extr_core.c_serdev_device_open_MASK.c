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
struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* open ) (struct serdev_controller*) ;int /*<<< orphan*/  (* close ) (struct serdev_controller*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct serdev_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct serdev_controller*) ; 

int FUNC4(struct serdev_device *serdev)
{
	struct serdev_controller *ctrl = serdev->ctrl;
	int ret;

	if (!ctrl || !ctrl->ops->open)
		return -EINVAL;

	ret = ctrl->ops->open(ctrl);
	if (ret)
		return ret;

	ret = FUNC0(&ctrl->dev);
	if (ret < 0) {
		FUNC1(&ctrl->dev);
		goto err_close;
	}

	return 0;

err_close:
	if (ctrl->ops->close)
		ctrl->ops->close(ctrl);

	return ret;
}