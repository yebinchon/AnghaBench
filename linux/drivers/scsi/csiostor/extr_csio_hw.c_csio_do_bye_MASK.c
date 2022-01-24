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
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct csio_mb*) ; 
 scalar_t__ FUNC4 (struct csio_hw*,struct csio_mb*) ; 
 struct csio_mb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC7(struct csio_hw *hw)
{
	struct csio_mb	*mbp;
	enum fw_retval retval;

	mbp = FUNC5(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, n_err_nomem);
		return -ENOMEM;
	}

	FUNC2(hw, mbp, CSIO_MB_DEFAULT_TMO, NULL);

	if (FUNC4(hw, mbp)) {
		FUNC1(hw, "Issue of BYE command failed\n");
		FUNC6(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	retval = FUNC3(mbp);
	if (retval != FW_SUCCESS) {
		FUNC6(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	FUNC6(mbp, hw->mb_mempool);

	return 0;
}