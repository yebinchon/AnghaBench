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
struct watchdog_device {int timeout; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int RAVE_SP_CMD_SW_WDT ; 
 int FUNC0 (struct watchdog_device*,int*,int) ; 

__attribute__((used)) static int FUNC1(struct watchdog_device *wdd, bool on)
{
	u8 cmd[] = {
		[0] = RAVE_SP_CMD_SW_WDT,
		[1] = 0,
		[2] = on,
		[3] = (u8)wdd->timeout,
		[4] = (u8)(wdd->timeout >> 8),
	};

	return FUNC0(wdd, cmd, sizeof(cmd));
}