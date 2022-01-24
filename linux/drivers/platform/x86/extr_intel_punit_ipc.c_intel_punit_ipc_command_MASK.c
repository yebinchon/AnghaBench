#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_complete; } ;
typedef  int IPC_TYPE ;
typedef  TYPE_1__ IPC_DEV ;

/* Variables and functions */
 int CMD_PARA1_SHIFT ; 
 int CMD_PARA2_SHIFT ; 
 int CMD_RUN ; 
 int GTDRIVER_IPC ; 
 int IPC_PUNIT_CMD_TYPE_MASK ; 
 int IPC_TYPE_OFFSET ; 
 int ISPDRIVER_IPC ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* punit_ipcdev ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(u32 cmd, u32 para1, u32 para2, u32 *in, u32 *out)
{
	IPC_DEV *ipcdev = punit_ipcdev;
	IPC_TYPE type;
	u32 val;
	int ret;

	FUNC6(&ipcdev->lock);

	FUNC8(&ipcdev->cmd_complete);
	type = (cmd & IPC_PUNIT_CMD_TYPE_MASK) >> IPC_TYPE_OFFSET;

	if (in) {
		FUNC5(ipcdev, type, *in);
		if (type == GTDRIVER_IPC || type == ISPDRIVER_IPC)
			FUNC4(ipcdev, type, *++in);
	}

	val = cmd & ~IPC_PUNIT_CMD_TYPE_MASK;
	val |= CMD_RUN | para2 << CMD_PARA2_SHIFT | para1 << CMD_PARA1_SHIFT;
	FUNC3(ipcdev, type, val);

	ret = FUNC0(ipcdev, type);
	if (ret)
		goto out;

	if (out) {
		*out = FUNC2(ipcdev, type);
		if (type == GTDRIVER_IPC || type == ISPDRIVER_IPC)
			*++out = FUNC1(ipcdev, type);
	}

out:
	FUNC7(&ipcdev->lock);
	return ret;
}