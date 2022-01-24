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
struct watchdog_device {unsigned int timeout; unsigned int pretimeout; } ;
struct arm_smccc_res {scalar_t__ a0; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  IMX_SIP_TIMER ; 
 int /*<<< orphan*/  IMX_SIP_TIMER_SET_PRETIME_WDOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 

__attribute__((used)) static int FUNC1(struct watchdog_device *wdog,
				     unsigned int pretimeout)
{
	struct arm_smccc_res res;

	/*
	 * SCU firmware calculates pretimeout based on current time
	 * stamp instead of watchdog timeout stamp, need to convert
	 * the pretimeout to SCU firmware's timeout value.
	 */
	FUNC0(IMX_SIP_TIMER, IMX_SIP_TIMER_SET_PRETIME_WDOG,
		      (wdog->timeout - pretimeout) * 1000, 0, 0, 0,
		      0, 0, &res);
	if (res.a0)
		return -EACCES;

	wdog->pretimeout = pretimeout;

	return 0;
}