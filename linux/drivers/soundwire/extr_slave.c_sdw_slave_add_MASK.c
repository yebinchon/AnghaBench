#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sdw_slave_id {int /*<<< orphan*/  unique_id; int /*<<< orphan*/  class_id; int /*<<< orphan*/  part_id; int /*<<< orphan*/  mfg_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * bus; int /*<<< orphan*/  release; struct fwnode_handle* fwnode; int /*<<< orphan*/  parent; } ;
struct sdw_slave {TYPE_1__ dev; int /*<<< orphan*/  node; scalar_t__ dev_num; int /*<<< orphan*/  status; struct sdw_bus* bus; int /*<<< orphan*/  id; } ;
struct sdw_bus {int /*<<< orphan*/  bus_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  slaves; int /*<<< orphan*/  link_id; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SDW_SLAVE_UNATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 struct sdw_slave* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sdw_slave_id*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  sdw_bus_type ; 
 int /*<<< orphan*/  FUNC11 (struct sdw_slave*) ; 
 int /*<<< orphan*/  sdw_slave_release ; 
 int /*<<< orphan*/  FUNC12 (struct fwnode_handle*) ; 

__attribute__((used)) static int FUNC13(struct sdw_bus *bus,
			 struct sdw_slave_id *id, struct fwnode_handle *fwnode)
{
	struct sdw_slave *slave;
	int ret;

	slave = FUNC3(sizeof(*slave), GFP_KERNEL);
	if (!slave)
		return -ENOMEM;

	/* Initialize data structure */
	FUNC6(&slave->id, id, sizeof(*id));
	slave->dev.parent = bus->dev;
	slave->dev.fwnode = fwnode;

	/* name shall be sdw:link:mfg:part:class:unique */
	FUNC1(&slave->dev, "sdw:%x:%x:%x:%x:%x",
		     bus->link_id, id->mfg_id, id->part_id,
		     id->class_id, id->unique_id);

	slave->dev.release = sdw_slave_release;
	slave->dev.bus = &sdw_bus_type;
	slave->dev.of_node = FUNC9(FUNC12(fwnode));
	slave->bus = bus;
	slave->status = SDW_SLAVE_UNATTACHED;
	slave->dev_num = 0;

	FUNC7(&bus->bus_lock);
	FUNC4(&slave->node, &bus->slaves);
	FUNC8(&bus->bus_lock);

	ret = FUNC2(&slave->dev);
	if (ret) {
		FUNC0(bus->dev, "Failed to add slave: ret %d\n", ret);

		/*
		 * On err, don't free but drop ref as this will be freed
		 * when release method is invoked.
		 */
		FUNC7(&bus->bus_lock);
		FUNC5(&slave->node);
		FUNC8(&bus->bus_lock);
		FUNC10(&slave->dev);
	}
	FUNC11(slave);

	return ret;
}