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
struct csio_mb {int dummy; } ;
struct csio_hw {scalar_t__ fw_state; int /*<<< orphan*/  mb_mempool; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;

/* Variables and functions */
 scalar_t__ CSIO_DEV_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,...) ; 
 int FUNC2 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct csio_mb*) ; 
 scalar_t__ FUNC5 (struct csio_hw*,struct csio_mb*) ; 
 struct csio_mb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC8(struct csio_hw *hw)
{
	struct csio_mb	*mbp;
	enum fw_retval retval;
	int rv = -EINVAL;

	mbp = FUNC6(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, n_err_nomem);
		return -ENOMEM;
	}

	/* Get device capabilities */
	FUNC3(hw, mbp, CSIO_MB_DEFAULT_TMO, 0, 0, 0, 0, NULL);

	if (FUNC5(hw, mbp)) {
		FUNC1(hw, "Issue of FW_CAPS_CONFIG_CMD(r) failed!\n");
		goto out;
	}

	retval = FUNC4(mbp);
	if (retval != FW_SUCCESS) {
		FUNC1(hw, "FW_CAPS_CONFIG_CMD(r) returned %d!\n", retval);
		goto out;
	}

	/* Validate device capabilities */
	rv = FUNC2(hw, mbp);
	if (rv != 0)
		goto out;

	/* Don't config device capabilities if already configured */
	if (hw->fw_state == CSIO_DEV_STATE_INIT) {
		rv = 0;
		goto out;
	}

	/* Write back desired device capabilities */
	FUNC3(hw, mbp, CSIO_MB_DEFAULT_TMO, true, true,
			    false, true, NULL);

	if (FUNC5(hw, mbp)) {
		FUNC1(hw, "Issue of FW_CAPS_CONFIG_CMD(w) failed!\n");
		goto out;
	}

	retval = FUNC4(mbp);
	if (retval != FW_SUCCESS) {
		FUNC1(hw, "FW_CAPS_CONFIG_CMD(w) returned %d!\n", retval);
		goto out;
	}

	rv = 0;
out:
	FUNC7(mbp, hw->mb_mempool);
	return rv;
}