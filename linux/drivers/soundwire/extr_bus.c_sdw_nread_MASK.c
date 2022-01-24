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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sdw_slave {TYPE_1__* bus; int /*<<< orphan*/  dev_num; } ;
struct sdw_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDW_MSG_FLAG_READ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sdw_msg*,struct sdw_slave*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,struct sdw_msg*) ; 

int FUNC4(struct sdw_slave *slave, u32 addr, size_t count, u8 *val)
{
	struct sdw_msg msg;
	int ret;

	ret = FUNC2(&msg, slave, addr, count,
			   slave->dev_num, SDW_MSG_FLAG_READ, val);
	if (ret < 0)
		return ret;

	ret = FUNC0(slave->bus->dev);
	if (ret < 0)
		return ret;

	ret = FUNC3(slave->bus, &msg);
	FUNC1(slave->bus->dev);

	return ret;
}