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
struct sdw_slave {int dev_num; int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDW_SCP_DEVNUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sdw_slave*) ; 
 int FUNC5 (struct sdw_slave*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct sdw_slave *slave)
{
	int ret, dev_num;

	/* check first if device number is assigned, if so reuse that */
	if (!slave->dev_num) {
		FUNC2(&slave->bus->bus_lock);
		dev_num = FUNC4(slave);
		FUNC3(&slave->bus->bus_lock);
		if (dev_num < 0) {
			FUNC0(&slave->bus->dev, "Get dev_num failed: %d\n",
				dev_num);
			return dev_num;
		}
	} else {
		FUNC1(slave->bus->dev,
			 "Slave already registered dev_num:%d\n",
			 slave->dev_num);

		/* Clear the slave->dev_num to transfer message on device 0 */
		dev_num = slave->dev_num;
		slave->dev_num = 0;
	}

	ret = FUNC5(slave, SDW_SCP_DEVNUMBER, dev_num);
	if (ret < 0) {
		FUNC0(&slave->dev, "Program device_num %d failed: %d\n",
			dev_num, ret);
		return ret;
	}

	/* After xfer of msg, restore dev_num */
	slave->dev_num = dev_num;

	return 0;
}