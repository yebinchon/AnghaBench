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
typedef  scalar_t__ uint32_t ;
struct csio_hw {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_BOOT_CFG_A ; 
 int ETIMEDOUT ; 
 int FW_CMD_MAX_TIMEOUT ; 
 int /*<<< orphan*/  PCIE_FW_A ; 
 int PCIE_FW_HALT_F ; 
 scalar_t__ PCIE_FW_MASTER_M ; 
 int PIORSTMODE_F ; 
 int PIORST_F ; 
 int /*<<< orphan*/  PL_RST_A ; 
 int UPCRST_F ; 
 scalar_t__ FUNC0 (struct csio_hw*,int) ; 
 int FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct csio_hw *hw, uint32_t mbox, int32_t reset)
{
	if (reset) {
		/*
		 * Since we're directing the RESET instead of the firmware
		 * doing it automatically, we need to clear the PCIE_FW.HALT
		 * bit.
		 */
		FUNC2(hw, PCIE_FW_A, PCIE_FW_HALT_F, 0);

		/*
		 * If we've been given a valid mailbox, first try to get the
		 * firmware to do the RESET.  If that works, great and we can
		 * return success.  Otherwise, if we haven't been given a
		 * valid mailbox or the RESET command failed, fall back to
		 * hitting the chip with a hammer.
		 */
		if (mbox <= PCIE_FW_MASTER_M) {
			FUNC2(hw, CIM_BOOT_CFG_A, UPCRST_F, 0);
			FUNC4(100);
			if (FUNC0(hw, true) == 0)
				return 0;
		}

		FUNC3(hw, PIORSTMODE_F | PIORST_F, PL_RST_A);
		FUNC4(2000);
	} else {
		int ms;

		FUNC2(hw, CIM_BOOT_CFG_A, UPCRST_F, 0);
		for (ms = 0; ms < FW_CMD_MAX_TIMEOUT; ) {
			if (!(FUNC1(hw, PCIE_FW_A) & PCIE_FW_HALT_F))
				return 0;
			FUNC4(100);
			ms += 100;
		}
		return -ETIMEDOUT;
	}
	return 0;
}