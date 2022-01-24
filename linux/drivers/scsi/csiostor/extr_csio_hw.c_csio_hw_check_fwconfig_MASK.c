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
struct csio_mb {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  mb_mempool; int /*<<< orphan*/  pfn; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_CF ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,char*,...) ; 
 scalar_t__ FUNC5 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*,struct csio_mb*,int*,int /*<<< orphan*/ ,int*) ; 
 struct csio_mb* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC10(struct csio_hw *hw, u32 *param)
{
	struct csio_mb	*mbp;
	enum fw_retval retval;
	u32 _param[1];

	mbp = FUNC8(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC1(hw, n_err_nomem);
		return -ENOMEM;
	}

	/*
	 * Find out whether we're dealing with a version of
	 * the firmware which has configuration file support.
	 */
	_param[0] = (FUNC2(FW_PARAMS_MNEM_DEV) |
		     FUNC3(FW_PARAMS_PARAM_DEV_CF));

	FUNC6(hw, mbp, CSIO_MB_DEFAULT_TMO, hw->pfn, 0,
		       FUNC0(_param), _param, NULL, false, NULL);
	if (FUNC5(hw, mbp)) {
		FUNC4(hw, "Issue of FW_PARAMS_CMD(read) failed!\n");
		FUNC9(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	FUNC7(hw, mbp, &retval,
			FUNC0(_param), _param);
	if (retval != FW_SUCCESS) {
		FUNC4(hw, "FW_PARAMS_CMD(read) failed with ret:0x%x!\n",
				retval);
		FUNC9(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	FUNC9(mbp, hw->mb_mempool);
	*param = _param[0];

	return 0;
}