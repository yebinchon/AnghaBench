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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sdw_slave {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SDW_DPN_INT_PORT_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct sdw_slave*,int /*<<< orphan*/ ,int,int) ; 

int FUNC3(struct sdw_slave *slave,
			   int port, bool enable, int mask)
{
	u32 addr;
	int ret;
	u8 val = 0;

	addr = FUNC0(port);

	/* Set/Clear port ready interrupt mask */
	if (enable) {
		val |= mask;
		val |= SDW_DPN_INT_PORT_READY;
	} else {
		val &= ~(mask);
		val &= ~SDW_DPN_INT_PORT_READY;
	}

	ret = FUNC2(slave, addr, (mask | SDW_DPN_INT_PORT_READY), val);
	if (ret < 0)
		FUNC1(slave->bus->dev,
			"SDW_DPN_INTMASK write failed:%d\n", val);

	return ret;
}