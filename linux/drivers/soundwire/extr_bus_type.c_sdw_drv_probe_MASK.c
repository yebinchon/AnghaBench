#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int clk_stop_timeout; } ;
struct sdw_slave {TYPE_3__ prop; TYPE_2__* bus; TYPE_1__* ops; } ;
struct sdw_driver {int (* probe ) (struct sdw_slave*,struct sdw_device_id const*) ;int /*<<< orphan*/  name; TYPE_1__* ops; } ;
struct sdw_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  clk_stop_timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_prop ) (struct sdw_slave*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 struct sdw_slave* FUNC3 (struct device*) ; 
 struct sdw_driver* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sdw_device_id* FUNC6 (struct sdw_slave*,struct sdw_driver*) ; 
 int FUNC7 (struct sdw_slave*,struct sdw_device_id const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdw_slave*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct sdw_slave *slave = FUNC3(dev);
	struct sdw_driver *drv = FUNC4(dev->driver);
	const struct sdw_device_id *id;
	int ret;

	id = FUNC6(slave, drv);
	if (!id)
		return -ENODEV;

	slave->ops = drv->ops;

	/*
	 * attach to power domain but don't turn on (last arg)
	 */
	ret = FUNC1(dev, false);
	if (ret)
		return ret;

	ret = drv->probe(slave, id);
	if (ret) {
		FUNC0(dev, "Probe of %s failed: %d\n", drv->name, ret);
		FUNC2(dev, false);
		return ret;
	}

	/* device is probed so let's read the properties now */
	if (slave->ops && slave->ops->read_prop)
		slave->ops->read_prop(slave);

	/*
	 * Check for valid clk_stop_timeout, use DisCo worst case value of
	 * 300ms
	 *
	 * TODO: check the timeouts and driver removal case
	 */
	if (slave->prop.clk_stop_timeout == 0)
		slave->prop.clk_stop_timeout = 300;

	slave->bus->clk_stop_timeout = FUNC5(u32, slave->bus->clk_stop_timeout,
					     slave->prop.clk_stop_timeout);

	return 0;
}