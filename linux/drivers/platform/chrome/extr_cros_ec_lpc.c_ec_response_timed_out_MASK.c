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
struct TYPE_2__ {int (* read ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EC_LPC_ADDR_HOST_CMD ; 
 int EC_LPC_STATUS_BUSY_MASK ; 
 unsigned long HZ ; 
 TYPE_1__ cros_ec_lpc_ops ; 
 unsigned long jiffies ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long one_second = jiffies + HZ;
	u8 data;

	FUNC2(200, 300);
	do {
		if (!(cros_ec_lpc_ops.read(EC_LPC_ADDR_HOST_CMD, 1, &data) &
		    EC_LPC_STATUS_BUSY_MASK))
			return 0;
		FUNC2(100, 200);
	} while (FUNC1(jiffies, one_second));

	return 1;
}