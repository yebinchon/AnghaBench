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
struct rpmsg_driver {struct rpmsg_device_id* id_table; } ;
struct rpmsg_device_id {scalar_t__* name; } ;
struct rpmsg_device {scalar_t__ driver_override; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,struct device_driver*) ; 
 scalar_t__ FUNC1 (struct rpmsg_device*,struct rpmsg_device_id const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct rpmsg_device* FUNC3 (struct device*) ; 
 struct rpmsg_driver* FUNC4 (struct device_driver*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct device_driver *drv)
{
	struct rpmsg_device *rpdev = FUNC3(dev);
	struct rpmsg_driver *rpdrv = FUNC4(drv);
	const struct rpmsg_device_id *ids = rpdrv->id_table;
	unsigned int i;

	if (rpdev->driver_override)
		return !FUNC2(rpdev->driver_override, drv->name);

	if (ids)
		for (i = 0; ids[i].name[0]; i++)
			if (FUNC1(rpdev, &ids[i]))
				return 1;

	return FUNC0(dev, drv);
}