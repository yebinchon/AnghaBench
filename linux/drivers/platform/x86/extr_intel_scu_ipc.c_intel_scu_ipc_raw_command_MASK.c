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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_scu_ipc_dev {scalar_t__ ipc_base; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ IPC_DPTR ; 
 scalar_t__ IPC_SPTR ; 
 int FUNC1 (struct intel_scu_ipc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_scu_ipc_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_scu_ipc_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_scu_ipc_dev*,int /*<<< orphan*/ ,int) ; 
 struct intel_scu_ipc_dev ipcdev ; 
 int /*<<< orphan*/  ipclock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC9(int cmd, int sub, u8 *in, int inlen,
			      u32 *out, int outlen, u32 dptr, u32 sptr)
{
	struct intel_scu_ipc_dev *scu = &ipcdev;
	int inbuflen = FUNC0(inlen, 4);
	u32 inbuf[4];
	int i, err;

	/* Up to 16 bytes */
	if (inbuflen > 4)
		return -EINVAL;

	FUNC6(&ipclock);
	if (scu->dev == NULL) {
		FUNC7(&ipclock);
		return -ENODEV;
	}

	FUNC8(dptr, scu->ipc_base + IPC_DPTR);
	FUNC8(sptr, scu->ipc_base + IPC_SPTR);

	/*
	 * SRAM controller doesn't support 8-bit writes, it only
	 * supports 32-bit writes, so we have to copy input data into
	 * the temporary buffer, and SCU FW will use the inlen to
	 * determine the actual input data length in the temporary
	 * buffer.
	 */
	FUNC5(inbuf, in, inlen);

	for (i = 0; i < inbuflen; i++)
		FUNC4(scu, inbuf[i], 4 * i);

	FUNC2(scu, (inlen << 16) | (sub << 12) | cmd);
	err = FUNC1(scu);
	if (!err) {
		for (i = 0; i < outlen; i++)
			*out++ = FUNC3(scu, 4 * i);
	}

	FUNC7(&ipclock);
	return err;
}