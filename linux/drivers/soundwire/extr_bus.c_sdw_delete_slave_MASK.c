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
struct sdw_slave {int /*<<< orphan*/  node; scalar_t__ dev_num; struct sdw_bus* bus; } ;
struct sdw_bus {int /*<<< orphan*/  bus_lock; int /*<<< orphan*/  assigned; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sdw_slave* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sdw_slave*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, void *data)
{
	struct sdw_slave *slave = FUNC1(dev);
	struct sdw_bus *bus = slave->bus;

	FUNC6(slave);

	FUNC4(&bus->bus_lock);

	if (slave->dev_num) /* clear dev_num if assigned */
		FUNC0(slave->dev_num, bus->assigned);

	FUNC3(&slave->node);
	FUNC5(&bus->bus_lock);

	FUNC2(dev);
	return 0;
}