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
struct intel_scu_ipc_dev {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct intel_scu_ipc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_scu_ipc_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_scu_ipc_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_scu_ipc_dev*,int /*<<< orphan*/ ,int) ; 
 struct intel_scu_ipc_dev ipcdev ; 
 int /*<<< orphan*/  ipclock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(int cmd, int sub, u32 *in, int inlen,
			  u32 *out, int outlen)
{
	struct intel_scu_ipc_dev *scu = &ipcdev;
	int i, err;

	FUNC4(&ipclock);
	if (scu->dev == NULL) {
		FUNC5(&ipclock);
		return -ENODEV;
	}

	for (i = 0; i < inlen; i++)
		FUNC3(scu, *in++, 4 * i);

	FUNC1(scu, (inlen << 16) | (sub << 12) | cmd);
	err = FUNC0(scu);

	if (!err) {
		for (i = 0; i < outlen; i++)
			*out++ = FUNC2(scu, 4 * i);
	}

	FUNC5(&ipclock);
	return err;
}