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
typedef  int u32 ;
typedef  int u16 ;
struct intel_scu_ipc_dev {scalar_t__ ipc_base; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int ENODEV ; 
 int IPC_CMD_PCNTRL_M ; 
 int IPC_CMD_PCNTRL_R ; 
 int IPC_CMD_PCNTRL_W ; 
 int IPC_WWBUF_SIZE ; 
 int FUNC0 (struct intel_scu_ipc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_scu_ipc_dev*,int) ; 
 int FUNC2 (struct intel_scu_ipc_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_scu_ipc_dev*,int,int) ; 
 struct intel_scu_ipc_dev ipcdev ; 
 int /*<<< orphan*/  ipclock ; 
 int /*<<< orphan*/  FUNC4 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(u16 *addr, u8 *data, u32 count, u32 op, u32 id)
{
	struct intel_scu_ipc_dev *scu = &ipcdev;
	int nc;
	u32 offset = 0;
	int err;
	u8 cbuf[IPC_WWBUF_SIZE];
	u32 *wbuf = (u32 *)&cbuf;

	FUNC5(cbuf, 0, sizeof(cbuf));

	FUNC6(&ipclock);

	if (scu->dev == NULL) {
		FUNC7(&ipclock);
		return -ENODEV;
	}

	for (nc = 0; nc < count; nc++, offset += 2) {
		cbuf[offset] = addr[nc];
		cbuf[offset + 1] = addr[nc] >> 8;
	}

	if (id == IPC_CMD_PCNTRL_R) {
		for (nc = 0, offset = 0; nc < count; nc++, offset += 4)
			FUNC3(scu, wbuf[nc], offset);
		FUNC1(scu, (count * 2) << 16 | id << 12 | 0 << 8 | op);
	} else if (id == IPC_CMD_PCNTRL_W) {
		for (nc = 0; nc < count; nc++, offset += 1)
			cbuf[offset] = data[nc];
		for (nc = 0, offset = 0; nc < count; nc++, offset += 4)
			FUNC3(scu, wbuf[nc], offset);
		FUNC1(scu, (count * 3) << 16 | id << 12 | 0 << 8 | op);
	} else if (id == IPC_CMD_PCNTRL_M) {
		cbuf[offset] = data[0];
		cbuf[offset + 1] = data[1];
		FUNC3(scu, wbuf[0], 0); /* Write wbuff */
		FUNC1(scu, 4 << 16 | id << 12 | 0 << 8 | op);
	}

	err = FUNC0(scu);
	if (!err && id == IPC_CMD_PCNTRL_R) { /* Read rbuf */
		/* Workaround: values are read as 0 without memcpy_fromio */
		FUNC4(cbuf, scu->ipc_base + 0x90, 16);
		for (nc = 0; nc < count; nc++)
			data[nc] = FUNC2(scu, nc);
	}
	FUNC7(&ipclock);
	return err;
}