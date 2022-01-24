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
typedef  int /*<<< orphan*/  u32 ;
struct csio_hw {char chip_ver; scalar_t__ fw_state; int /*<<< orphan*/  sm; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  tp_vers; int /*<<< orphan*/  fwrev; int /*<<< orphan*/  vpd; TYPE_1__* chip_ops; int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_set_mem_win ) (struct csio_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CSIO_DEV_STATE_INIT ; 
 int /*<<< orphan*/  CSIO_HWE_FATAL ; 
 int /*<<< orphan*/  CSIO_HWE_INIT ; 
 int /*<<< orphan*/  CSIO_HWF_USING_SOFT_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  MEMWIN_CSIOSTOR ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2_COMP_TIMEOUT ; 
 int /*<<< orphan*/  PL_REV_A ; 
 int FUNC1 (struct csio_hw*) ; 
 int FUNC2 (struct csio_hw*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,char*,int) ; 
 int FUNC4 (struct csio_hw*) ; 
 int FUNC5 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct csio_hw*) ; 
 int FUNC7 (struct csio_hw*) ; 
 int FUNC8 (struct csio_hw*,int*) ; 
 int FUNC9 (struct csio_hw*) ; 
 int FUNC10 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_hw*,char*) ; 
 int FUNC14 (struct csio_hw*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct csio_hw*,char*,...) ; 
 scalar_t__ FUNC16 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct csio_hw*) ; 
 int /*<<< orphan*/  n_err_fatal ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct csio_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(struct csio_hw *hw)
{
	int reset = 1;
	int rv;
	u32 param[1];

	rv = FUNC7(hw);
	if (rv != 0) {
		FUNC0(hw, n_err_fatal);
		FUNC17(&hw->sm, CSIO_HWE_FATAL);
		goto out;
	}

	/* HW version */
	hw->chip_ver = (char)FUNC18(hw, PL_REV_A);

	/* Needed for FW download */
	rv = FUNC9(hw);
	if (rv != 0) {
		FUNC3(hw, "Failed to get serial flash params rv:%d\n", rv);
		FUNC17(&hw->sm, CSIO_HWE_FATAL);
		goto out;
	}

	/* Set PCIe completion timeout to 4 seconds */
	if (FUNC20(hw->pdev))
		FUNC21(hw->pdev, PCI_EXP_DEVCTL2,
				PCI_EXP_DEVCTL2_COMP_TIMEOUT, 0xd);

	hw->chip_ops->chip_set_mem_win(hw, MEMWIN_CSIOSTOR);

	rv = FUNC10(hw, &hw->fwrev);
	if (rv != 0)
		goto out;

	FUNC13(hw, "Firmware revision");

	rv = FUNC2(hw, &hw->fw_state);
	if (rv != 0) {
		FUNC0(hw, n_err_fatal);
		FUNC17(&hw->sm, CSIO_HWE_FATAL);
		goto out;
	}

	/* Read vpd */
	rv = FUNC12(hw, &hw->vpd);
	if (rv != 0)
		goto out;

	FUNC10(hw, &hw->fwrev);
	FUNC11(hw, &hw->tp_vers);
	if (FUNC16(hw) && hw->fw_state != CSIO_DEV_STATE_INIT) {

			/* Do firmware update */
		FUNC23(&hw->lock);
		rv = FUNC8(hw, &reset);
		FUNC22(&hw->lock);

		if (rv != 0)
			goto out;

		rv = FUNC6(hw);
		if (rv < 0)
			goto out;

		/* If the firmware doesn't support Configuration Files,
		 * return an error.
		 */
		rv = FUNC5(hw, param);
		if (rv != 0) {
			FUNC15(hw, "Firmware doesn't support "
				  "Firmware Configuration files\n");
			goto out;
		}

		/* The firmware provides us with a memory buffer where we can
		 * load a Configuration File from the host if we want to
		 * override the Configuration File in flash.
		 */
		rv = FUNC14(hw, reset, param);
		if (rv == -ENOENT) {
			FUNC15(hw, "Could not initialize "
				  "adapter, error%d\n", rv);
			goto out;
		}
		if (rv != 0) {
			FUNC15(hw, "Could not initialize "
				  "adapter, error%d\n", rv);
			goto out;
		}

	} else {
		rv = FUNC6(hw);
		if (rv < 0)
			goto out;

		if (hw->fw_state == CSIO_DEV_STATE_INIT) {

			hw->flags |= CSIO_HWF_USING_SOFT_PARAMS;

			/* device parameters */
			rv = FUNC4(hw);
			if (rv != 0)
				goto out;

			/* Get device capabilities */
			rv = FUNC1(hw);
			if (rv != 0)
				goto out;

			/* Configure SGE */
			FUNC19(hw);

			/* Post event to notify completion of configuration */
			FUNC17(&hw->sm, CSIO_HWE_INIT);
			goto out;
		}
	} /* if not master */

out:
	return;
}