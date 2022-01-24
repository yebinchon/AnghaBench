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
typedef  scalar_t__ u32 ;
struct q6v5 {scalar_t__ rmb_base; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ RMB_MBA_STATUS_REG ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct q6v5 *qproc, u32 status, int ms)
{

	unsigned long timeout;
	s32 val;

	timeout = jiffies + FUNC0(ms);
	for (;;) {
		val = FUNC2(qproc->rmb_base + RMB_MBA_STATUS_REG);
		if (val < 0)
			break;

		if (!status && val)
			break;
		else if (status && val == status)
			break;

		if (FUNC3(jiffies, timeout))
			return -ETIMEDOUT;

		FUNC1(1);
	}

	return val;
}