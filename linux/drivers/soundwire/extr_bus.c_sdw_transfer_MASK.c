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
struct sdw_msg {int /*<<< orphan*/  dev_num; scalar_t__ page; } ;
struct sdw_bus {int /*<<< orphan*/  msg_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sdw_bus*,struct sdw_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sdw_bus*,int /*<<< orphan*/ ) ; 

int FUNC5(struct sdw_bus *bus, struct sdw_msg *msg)
{
	int ret;

	FUNC2(&bus->msg_lock);

	ret = FUNC1(bus, msg);
	if (ret != 0 && ret != -ENODATA)
		FUNC0(bus->dev, "trf on Slave %d failed:%d\n",
			msg->dev_num, ret);

	if (msg->page)
		FUNC4(bus, msg->dev_num);

	FUNC3(&bus->msg_lock);

	return ret;
}