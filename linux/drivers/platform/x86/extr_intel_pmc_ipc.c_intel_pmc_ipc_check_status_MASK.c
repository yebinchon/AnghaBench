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
struct TYPE_2__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  dev; int /*<<< orphan*/  cmd_complete; scalar_t__ irq_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EACCES ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int IPC_CMD_SIZE ; 
 int IPC_ERR_EMSECURITY ; 
 int IPC_ERR_UNSIGNEDKERNEL ; 
 int IPC_LOOP_CNT ; 
 int IPC_MAX_SEC ; 
 int IPC_STATUS_BUSY ; 
 int IPC_STATUS_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/ * ipc_err_sources ; 
 int FUNC2 () ; 
 TYPE_1__ ipcdev ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(void)
{
	int status;
	int ret = 0;

	if (ipcdev.irq_mode) {
		if (0 == FUNC4(
				&ipcdev.cmd_complete, IPC_MAX_SEC * HZ))
			ret = -ETIMEDOUT;
	} else {
		int loop_count = IPC_LOOP_CNT;

		while ((FUNC2() & IPC_STATUS_BUSY) && --loop_count)
			FUNC3(1);
		if (loop_count == 0)
			ret = -ETIMEDOUT;
	}

	status = FUNC2();
	if (ret == -ETIMEDOUT) {
		FUNC1(ipcdev.dev,
			"IPC timed out, TS=0x%x, CMD=0x%x\n",
			status, ipcdev.cmd);
		return ret;
	}

	if (status & IPC_STATUS_ERR) {
		int i;

		ret = -EIO;
		i = (status >> IPC_CMD_SIZE) & 0xFF;
		if (i < FUNC0(ipc_err_sources))
			FUNC1(ipcdev.dev,
				"IPC failed: %s, STS=0x%x, CMD=0x%x\n",
				ipc_err_sources[i], status, ipcdev.cmd);
		else
			FUNC1(ipcdev.dev,
				"IPC failed: unknown, STS=0x%x, CMD=0x%x\n",
				status, ipcdev.cmd);
		if ((i == IPC_ERR_UNSIGNEDKERNEL) || (i == IPC_ERR_EMSECURITY))
			ret = -EACCES;
	}

	return ret;
}