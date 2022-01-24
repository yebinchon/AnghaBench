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
struct TYPE_2__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int IPC_CMD_SUBCMD ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ ipcdev ; 
 int /*<<< orphan*/  ipclock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(int cmd, int sub)
{
	int ret;

	FUNC2(&ipclock);
	if (ipcdev.dev == NULL) {
		FUNC3(&ipclock);
		return -ENODEV;
	}
	FUNC1(sub << IPC_CMD_SUBCMD | cmd);
	ret = FUNC0();
	FUNC3(&ipclock);

	return ret;
}