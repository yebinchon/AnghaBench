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
struct csio_hw {int /*<<< orphan*/  mb_mempool; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PIORSTMODE_F ; 
 int PIORST_F ; 
 int /*<<< orphan*/  PL_RST_A ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,...) ; 
 int FUNC2 (struct csio_mb*) ; 
 scalar_t__ FUNC3 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct csio_mb* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC9(struct csio_hw *hw, bool fw_rst)
{
	struct csio_mb	*mbp;
	enum fw_retval retval;

	if (!fw_rst) {
		/* PIO reset */
		FUNC5(hw, PIORSTMODE_F | PIORST_F, PL_RST_A);
		FUNC6(2000);
		return 0;
	}

	mbp = FUNC7(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, n_err_nomem);
		return -ENOMEM;
	}

	FUNC4(hw, mbp, CSIO_MB_DEFAULT_TMO,
		      PIORSTMODE_F | PIORST_F, 0, NULL);

	if (FUNC3(hw, mbp)) {
		FUNC1(hw, "Issue of RESET command failed.n");
		FUNC8(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	retval = FUNC2(mbp);
	if (retval != FW_SUCCESS) {
		FUNC1(hw, "RESET cmd failed with ret:0x%x.\n", retval);
		FUNC8(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	FUNC8(mbp, hw->mb_mempool);

	return 0;
}