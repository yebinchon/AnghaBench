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
struct mdev_type {int /*<<< orphan*/ * devices_kobj; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 char* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  mdev_device_attrs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3(struct device *dev, struct mdev_type *type)
{
	FUNC1(&dev->kobj, mdev_device_attrs);
	FUNC2(&dev->kobj, "mdev_type");
	FUNC2(type->devices_kobj, FUNC0(dev));
}