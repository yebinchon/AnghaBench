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
struct superhyway_driver {struct superhyway_device_id* id_table; } ;
struct superhyway_device_id {int dummy; } ;
struct superhyway_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct superhyway_device_id const*,struct superhyway_device*) ; 
 struct superhyway_device* FUNC1 (struct device*) ; 
 struct superhyway_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct superhyway_device *shyway_dev = FUNC1(dev);
	struct superhyway_driver *shyway_drv = FUNC2(drv);
	const struct superhyway_device_id *ids = shyway_drv->id_table;

	if (!ids)
		return -EINVAL;
	if (FUNC0(ids, shyway_dev))
		return 1;

	return -ENODEV;
}