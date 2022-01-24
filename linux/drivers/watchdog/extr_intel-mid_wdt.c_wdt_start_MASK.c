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
typedef  int /*<<< orphan*/  u32 ;
struct watchdog_device {int timeout; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ipc_wd_start ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  MID_WDT_PRETIMEOUT ; 
 int /*<<< orphan*/  SCU_WATCHDOG_START ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct device* FUNC2 (struct watchdog_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wd)
{
	struct device *dev = FUNC2(wd);
	int ret, in_size;
	int timeout = wd->timeout;
	struct ipc_wd_start {
		u32 pretimeout;
		u32 timeout;
	} ipc_wd_start = { timeout - MID_WDT_PRETIMEOUT, timeout };

	/*
	 * SCU expects the input size for watchdog IPC to
	 * be based on 4 bytes
	 */
	in_size = FUNC0(sizeof(ipc_wd_start), 4);

	ret = FUNC3(SCU_WATCHDOG_START, (u32 *)&ipc_wd_start, in_size);
	if (ret)
		FUNC1(dev, "error starting watchdog: %d\n", ret);

	return ret;
}