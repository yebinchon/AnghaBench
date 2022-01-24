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
struct csio_mb {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  mb_mempool; } ;
typedef  scalar_t__ int32_t ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_BOOT_CFG_A ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_RESET_CMD_HALT_F ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCIE_FW_A ; 
 int /*<<< orphan*/  PCIE_FW_HALT_F ; 
 scalar_t__ PCIE_FW_MASTER_M ; 
 int PIORSTMODE_F ; 
 int PIORST_F ; 
 int /*<<< orphan*/  UPCRST_F ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*) ; 
 int FUNC2 (struct csio_mb*) ; 
 scalar_t__ FUNC3 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csio_mb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC8(struct csio_hw *hw, uint32_t mbox, int32_t force)
{
	enum fw_retval retval = 0;

	/*
	 * If a legitimate mailbox is provided, issue a RESET command
	 * with a HALT indication.
	 */
	if (mbox <= PCIE_FW_MASTER_M) {
		struct csio_mb	*mbp;

		mbp = FUNC6(hw->mb_mempool, GFP_ATOMIC);
		if (!mbp) {
			FUNC0(hw, n_err_nomem);
			return -ENOMEM;
		}

		FUNC4(hw, mbp, CSIO_MB_DEFAULT_TMO,
			      PIORSTMODE_F | PIORST_F, FW_RESET_CMD_HALT_F,
			      NULL);

		if (FUNC3(hw, mbp)) {
			FUNC1(hw, "Issue of RESET command failed!\n");
			FUNC7(mbp, hw->mb_mempool);
			return -EINVAL;
		}

		retval = FUNC2(mbp);
		FUNC7(mbp, hw->mb_mempool);
	}

	/*
	 * Normally we won't complete the operation if the firmware RESET
	 * command fails but if our caller insists we'll go ahead and put the
	 * uP into RESET.  This can be useful if the firmware is hung or even
	 * missing ...  We'll have to take the risk of putting the uP into
	 * RESET without the cooperation of firmware in that case.
	 *
	 * We also force the firmware's HALT flag to be on in case we bypassed
	 * the firmware RESET command above or we're dealing with old firmware
	 * which doesn't have the HALT capability.  This will serve as a flag
	 * for the incoming firmware to know that it's coming out of a HALT
	 * rather than a RESET ... if it's new enough to understand that ...
	 */
	if (retval == 0 || force) {
		FUNC5(hw, CIM_BOOT_CFG_A, UPCRST_F, UPCRST_F);
		FUNC5(hw, PCIE_FW_A, PCIE_FW_HALT_F,
				   PCIE_FW_HALT_F);
	}

	/*
	 * And we always return the result of the firmware RESET command
	 * even when we force the uP into RESET ...
	 */
	return retval ? -EINVAL : 0;
}