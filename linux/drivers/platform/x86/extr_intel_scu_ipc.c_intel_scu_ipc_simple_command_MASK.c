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
struct intel_scu_ipc_dev {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct intel_scu_ipc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_scu_ipc_dev*,int) ; 
 struct intel_scu_ipc_dev ipcdev ; 
 int /*<<< orphan*/  ipclock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(int cmd, int sub)
{
	struct intel_scu_ipc_dev *scu = &ipcdev;
	int err;

	FUNC2(&ipclock);
	if (scu->dev == NULL) {
		FUNC3(&ipclock);
		return -ENODEV;
	}
	FUNC1(scu, sub << 12 | cmd);
	err = FUNC0(scu);
	FUNC3(&ipclock);
	return err;
}