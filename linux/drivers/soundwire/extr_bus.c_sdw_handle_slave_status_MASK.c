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
struct sdw_slave {int const status; TYPE_1__* bus; } ;
struct sdw_bus {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_lock; int /*<<< orphan*/  assigned; } ;
typedef  enum sdw_slave_status { ____Placeholder_sdw_slave_status } sdw_slave_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SDW_MAX_DEVICES ; 
#define  SDW_SLAVE_ALERT 130 
#define  SDW_SLAVE_ATTACHED 129 
#define  SDW_SLAVE_UNATTACHED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sdw_slave* FUNC4 (struct sdw_bus*,int) ; 
 int FUNC5 (struct sdw_slave*) ; 
 int FUNC6 (struct sdw_slave*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdw_slave*,int const) ; 
 int FUNC8 (struct sdw_bus*) ; 
 int FUNC9 (struct sdw_slave*,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 

int FUNC11(struct sdw_bus *bus,
			    enum sdw_slave_status status[])
{
	enum sdw_slave_status prev_status;
	struct sdw_slave *slave;
	int i, ret = 0;

	if (status[0] == SDW_SLAVE_ATTACHED) {
		FUNC0(bus->dev, "Slave attached, programming device number\n");
		ret = FUNC8(bus);
		if (ret)
			FUNC1(bus->dev, "Slave attach failed: %d\n", ret);
		/*
		 * programming a device number will have side effects,
		 * so we deal with other devices at a later time
		 */
		return ret;
	}

	/* Continue to check other slave statuses */
	for (i = 1; i <= SDW_MAX_DEVICES; i++) {
		FUNC2(&bus->bus_lock);
		if (FUNC10(i, bus->assigned) == false) {
			FUNC3(&bus->bus_lock);
			continue;
		}
		FUNC3(&bus->bus_lock);

		slave = FUNC4(bus, i);
		if (!slave)
			continue;

		switch (status[i]) {
		case SDW_SLAVE_UNATTACHED:
			if (slave->status == SDW_SLAVE_UNATTACHED)
				break;

			FUNC7(slave, SDW_SLAVE_UNATTACHED);
			break;

		case SDW_SLAVE_ALERT:
			ret = FUNC5(slave);
			if (ret)
				FUNC1(bus->dev,
					"Slave %d alert handling failed: %d\n",
					i, ret);
			break;

		case SDW_SLAVE_ATTACHED:
			if (slave->status == SDW_SLAVE_ATTACHED)
				break;

			prev_status = slave->status;
			FUNC7(slave, SDW_SLAVE_ATTACHED);

			if (prev_status == SDW_SLAVE_ALERT)
				break;

			ret = FUNC6(slave);
			if (ret)
				FUNC1(bus->dev,
					"Slave %d initialization failed: %d\n",
					i, ret);

			break;

		default:
			FUNC1(bus->dev, "Invalid slave %d status:%d\n",
				i, status[i]);
			break;
		}

		ret = FUNC9(slave, status[i]);
		if (ret)
			FUNC1(slave->bus->dev,
				"Update Slave status failed:%d\n", ret);
	}

	return ret;
}