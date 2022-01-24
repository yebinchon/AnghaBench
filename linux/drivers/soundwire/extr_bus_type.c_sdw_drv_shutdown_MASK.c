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
struct sdw_driver {int /*<<< orphan*/  (* shutdown ) (struct sdw_slave*) ;} ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct sdw_slave* FUNC0 (struct device*) ; 
 struct sdw_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdw_slave*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct sdw_slave *slave = FUNC0(dev);
	struct sdw_driver *drv = FUNC1(dev->driver);

	if (drv->shutdown)
		drv->shutdown(slave);
}