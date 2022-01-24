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
typedef  int u32 ;
struct intel_scu_ipc_dev {int /*<<< orphan*/ * dev; scalar_t__ i2c_base; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 scalar_t__ I2C_DATA_ADDR ; 
 scalar_t__ IPC_I2C_CNTRL_ADDR ; 
 int IPC_I2C_READ ; 
 int IPC_I2C_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct intel_scu_ipc_dev ipcdev ; 
 int /*<<< orphan*/  ipclock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

int FUNC6(u32 addr, u32 *data)
{
	struct intel_scu_ipc_dev *scu = &ipcdev;
	u32 cmd = 0;

	FUNC1(&ipclock);
	if (scu->dev == NULL) {
		FUNC2(&ipclock);
		return -ENODEV;
	}
	cmd = (addr >> 24) & 0xFF;
	if (cmd == IPC_I2C_READ) {
		FUNC5(addr, scu->i2c_base + IPC_I2C_CNTRL_ADDR);
		/* Write not getting updated without delay */
		FUNC4(1000, 2000);
		*data = FUNC3(scu->i2c_base + I2C_DATA_ADDR);
	} else if (cmd == IPC_I2C_WRITE) {
		FUNC5(*data, scu->i2c_base + I2C_DATA_ADDR);
		FUNC4(1000, 2000);
		FUNC5(addr, scu->i2c_base + IPC_I2C_CNTRL_ADDR);
	} else {
		FUNC0(scu->dev,
			"intel_scu_ipc: I2C INVALID_CMD = 0x%x\n", cmd);

		FUNC2(&ipclock);
		return -EIO;
	}
	FUNC2(&ipclock);
	return 0;
}