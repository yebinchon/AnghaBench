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
struct mdev_type {int /*<<< orphan*/ * devices_kobj; int /*<<< orphan*/  kobj; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 char* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  mdev_device_attrs ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

int  FUNC4(struct device *dev, struct mdev_type *type)
{
	int ret;

	ret = FUNC2(type->devices_kobj, &dev->kobj, FUNC0(dev));
	if (ret)
		return ret;

	ret = FUNC2(&dev->kobj, &type->kobj, "mdev_type");
	if (ret)
		goto type_link_failed;

	ret = FUNC1(&dev->kobj, mdev_device_attrs);
	if (ret)
		goto create_files_failed;

	return ret;

create_files_failed:
	FUNC3(&dev->kobj, "mdev_type");
type_link_failed:
	FUNC3(type->devices_kobj, FUNC0(dev));
	return ret;
}