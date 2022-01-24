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
struct sdw_slave {int dummy; } ;
struct sdw_driver {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sdw_slave* FUNC0 (struct device*) ; 
 struct sdw_driver* FUNC1 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdw_slave*,struct sdw_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *ddrv)
{
	struct sdw_slave *slave = FUNC0(dev);
	struct sdw_driver *drv = FUNC1(ddrv);

	return !!FUNC2(slave, drv);
}