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
struct notifier_block {int dummy; } ;
struct ccwgroup_device {int /*<<< orphan*/  ungroup_work; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long BUS_NOTIFY_UNBIND_DRIVER ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ccwgroup_device* FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb, unsigned long action,
			     void *data)
{
	struct ccwgroup_device *gdev = FUNC2(data);

	if (action == BUS_NOTIFY_UNBIND_DRIVER) {
		FUNC0(&gdev->dev);
		FUNC1(&gdev->ungroup_work);
	}

	return NOTIFY_OK;
}