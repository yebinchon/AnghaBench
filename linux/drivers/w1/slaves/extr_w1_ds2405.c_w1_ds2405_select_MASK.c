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
typedef  int u8 ;
typedef  int u64 ;
struct w1_slave {int /*<<< orphan*/  reg_num; struct w1_master* master; } ;
struct w1_master {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  W1_ALARM_SEARCH ; 
 int /*<<< orphan*/  W1_SEARCH ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct w1_master*) ; 
 int FUNC3 (struct w1_master*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct w1_master*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct w1_slave *sl, bool only_active)
{
	struct w1_master *dev = sl->master;

	u64 dev_addr = FUNC1(*(u64 *)&sl->reg_num);
	unsigned int bit_ctr;

	if (FUNC2(dev) != 0)
		return 0;

	/*
	 * We cannot use a normal Match ROM command
	 * since doing so would toggle PIO state
	 */
	FUNC4(dev, only_active ? W1_ALARM_SEARCH : W1_SEARCH);

	for (bit_ctr = 0; bit_ctr < 64; bit_ctr++) {
		int bit2send = !!(dev_addr & FUNC0(bit_ctr));
		u8 ret;

		ret = FUNC3(dev, bit2send);

		if ((ret & (FUNC0(0) | FUNC0(1))) ==
		    (FUNC0(0) | FUNC0(1))) /* no devices found */
			return 0;

		if (!!(ret & FUNC0(2)) != bit2send)
			/* wrong direction taken - no such device */
			return 0;
	}

	return 1;
}