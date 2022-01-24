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
struct device {int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct rpmsg_device {struct device dev; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  rpmsg_bus ; 

int FUNC5(struct rpmsg_device *rpdev)
{
	struct device *dev = &rpdev->dev;
	int ret;

	FUNC2(&rpdev->dev, "%s.%s.%d.%d", FUNC1(dev->parent),
		     rpdev->id.name, rpdev->src, rpdev->dst);

	rpdev->dev.bus = &rpmsg_bus;

	ret = FUNC3(&rpdev->dev);
	if (ret) {
		FUNC0(dev, "device_register failed: %d\n", ret);
		FUNC4(&rpdev->dev);
	}

	return ret;
}