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
struct sdw_msg {int /*<<< orphan*/  dev_num; scalar_t__ page; } ;
struct sdw_defer {int dummy; } ;
struct sdw_bus {int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfer_msg_defer; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sdw_bus*,struct sdw_msg*,struct sdw_defer*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdw_bus*,int /*<<< orphan*/ ) ; 

int FUNC3(struct sdw_bus *bus, struct sdw_msg *msg,
		       struct sdw_defer *defer)
{
	int ret;

	if (!bus->ops->xfer_msg_defer)
		return -ENOTSUPP;

	ret = FUNC1(bus, msg, defer);
	if (ret != 0 && ret != -ENODATA)
		FUNC0(bus->dev, "Defer trf on Slave %d failed:%d\n",
			msg->dev_num, ret);

	if (msg->page)
		FUNC2(bus, msg->dev_num);

	return ret;
}