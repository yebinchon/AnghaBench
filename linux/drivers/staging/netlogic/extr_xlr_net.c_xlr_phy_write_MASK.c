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
typedef  int u32 ;
typedef  scalar_t__ u16 ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  R_MII_MGMT_ADDRESS ; 
 int /*<<< orphan*/  R_MII_MGMT_INDICATORS ; 
 int /*<<< orphan*/  R_MII_MGMT_WRITE_DATA ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(u32 *base_addr, int phy_addr, int regnum, u16 val)
{
	unsigned long timeout, stoptime, checktime;
	int timedout;

	/* 100ms timeout*/
	timeout = FUNC0(100);
	stoptime = jiffies + timeout;
	timedout = 0;

	FUNC4(base_addr, R_MII_MGMT_ADDRESS, (phy_addr << 8) | regnum);

	/* Write the data which starts the write cycle */
	FUNC4(base_addr, R_MII_MGMT_WRITE_DATA, (u32)val);

	/* poll for the read cycle to complete */
	while (!timedout) {
		checktime = jiffies;
		if (FUNC3(base_addr, R_MII_MGMT_INDICATORS) == 0)
			break;
		timedout = FUNC2(checktime, stoptime);
	}
	if (timedout) {
		FUNC1("Phy device write err: device busy");
		return -EBUSY;
	}

	return 0;
}