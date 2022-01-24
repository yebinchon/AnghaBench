#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_complete; } ;
typedef  int IPC_TYPE ;
typedef  TYPE_1__ IPC_DEV ;

/* Variables and functions */
 int CMD_PARA1_SHIFT ; 
 int CMD_PARA2_SHIFT ; 
 int CMD_RUN ; 
 int IPC_PUNIT_CMD_TYPE_MASK ; 
 int IPC_TYPE_OFFSET ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* punit_ipcdev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(int cmd, int para1, int para2)
{
	IPC_DEV *ipcdev = punit_ipcdev;
	IPC_TYPE type;
	u32 val;
	int ret;

	FUNC2(&ipcdev->lock);

	FUNC4(&ipcdev->cmd_complete);
	type = (cmd & IPC_PUNIT_CMD_TYPE_MASK) >> IPC_TYPE_OFFSET;

	val = cmd & ~IPC_PUNIT_CMD_TYPE_MASK;
	val |= CMD_RUN | para2 << CMD_PARA2_SHIFT | para1 << CMD_PARA1_SHIFT;
	FUNC1(ipcdev, type, val);
	ret = FUNC0(ipcdev, type);

	FUNC3(&ipcdev->lock);

	return ret;
}