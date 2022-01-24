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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ ipc_base; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int IPC_CMD_SIZE ; 
 int IPC_CMD_SUBCMD ; 
 int IPC_DATA_BUFFER_SIZE ; 
 scalar_t__ IPC_DPTR ; 
 scalar_t__ IPC_SPTR ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ ipcdev ; 
 int /*<<< orphan*/  ipclock ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

int FUNC8(u32 cmd, u32 sub, u8 *in, u32 inlen, u32 *out,
			  u32 outlen, u32 dptr, u32 sptr)
{
	u32 wbuf[4] = { 0 };
	int ret;
	int i;

	if (inlen > IPC_DATA_BUFFER_SIZE || outlen > IPC_DATA_BUFFER_SIZE / 4)
		return -EINVAL;

	FUNC5(&ipclock);
	if (ipcdev.dev == NULL) {
		FUNC6(&ipclock);
		return -ENODEV;
	}
	FUNC4(wbuf, in, inlen);
	FUNC7(dptr, ipcdev.ipc_base + IPC_DPTR);
	FUNC7(sptr, ipcdev.ipc_base + IPC_SPTR);
	/* The input data register is 32bit register and inlen is in Byte */
	for (i = 0; i < ((inlen + 3) / 4); i++)
		FUNC2(wbuf[i], 4 * i);
	FUNC3((inlen << IPC_CMD_SIZE) |
			(sub << IPC_CMD_SUBCMD) | cmd);
	ret = FUNC0();
	if (!ret) {
		/* out is read from 32bit register and outlen is in 32bit */
		for (i = 0; i < outlen; i++)
			*out++ = FUNC1(4 * i);
	}
	FUNC6(&ipclock);

	return ret;
}