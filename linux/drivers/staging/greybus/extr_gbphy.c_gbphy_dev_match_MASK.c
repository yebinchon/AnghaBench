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
struct gbphy_driver {int dummy; } ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct gbphy_device_id* FUNC0 (struct gbphy_device*,struct gbphy_driver*) ; 
 struct gbphy_device* FUNC1 (struct device*) ; 
 struct gbphy_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct gbphy_driver *gbphy_drv = FUNC2(drv);
	struct gbphy_device *gbphy_dev = FUNC1(dev);
	const struct gbphy_device_id *id;

	id = FUNC0(gbphy_dev, gbphy_drv);
	if (id)
		return 1;

	return 0;
}