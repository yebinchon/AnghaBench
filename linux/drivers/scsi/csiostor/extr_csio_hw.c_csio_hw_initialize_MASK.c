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
struct csio_mb {int dummy; } ;
struct csio_hw {scalar_t__ fw_state; int num_pports; int /*<<< orphan*/  mb_mempool; int /*<<< orphan*/  sm; TYPE_1__* pport; int /*<<< orphan*/  lock; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
struct TYPE_2__ {int /*<<< orphan*/  mod_type; } ;

/* Variables and functions */
 scalar_t__ CSIO_DEV_STATE_INIT ; 
 int /*<<< orphan*/  CSIO_HWE_INIT_DONE ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int /*<<< orphan*/  FW_PORT_MOD_TYPE_NA ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct csio_hw*) ; 
 int FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*,...) ; 
 int FUNC3 (struct csio_hw*) ; 
 scalar_t__ FUNC4 (struct csio_hw*) ; 
 int FUNC5 (struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct csio_mb* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct csio_hw *hw)
{
	struct csio_mb	*mbp;
	enum fw_retval retval;
	int rv;
	int i;

	if (FUNC4(hw) && hw->fw_state != CSIO_DEV_STATE_INIT) {
		mbp = FUNC9(hw->mb_mempool, GFP_ATOMIC);
		if (!mbp)
			goto out;

		FUNC6(hw, mbp, CSIO_MB_DEFAULT_TMO, NULL);

		if (FUNC7(hw, mbp)) {
			FUNC2(hw, "Issue of FW_INITIALIZE_CMD failed!\n");
			goto free_and_out;
		}

		retval = FUNC5(mbp);
		if (retval != FW_SUCCESS) {
			FUNC2(hw, "FW_INITIALIZE_CMD returned 0x%x!\n",
				 retval);
			goto free_and_out;
		}

		FUNC10(mbp, hw->mb_mempool);
	}

	rv = FUNC3(hw);
	if (rv != 0) {
		FUNC2(hw, "Failed to read fcoe resource info: %d\n", rv);
		goto out;
	}

	FUNC12(&hw->lock);
	rv = FUNC0(hw);
	FUNC11(&hw->lock);

	if (rv != 0) {
		FUNC2(hw, "Config of queues failed!: %d\n", rv);
		goto out;
	}

	for (i = 0; i < hw->num_pports; i++)
		hw->pport[i].mod_type = FW_PORT_MOD_TYPE_NA;

	if (FUNC4(hw) && hw->fw_state != CSIO_DEV_STATE_INIT) {
		rv = FUNC1(hw);
		if (rv != 0) {
			FUNC2(hw, "Failed to enable ports: %d\n", rv);
			goto out;
		}
	}

	FUNC8(&hw->sm, CSIO_HWE_INIT_DONE);
	return;

free_and_out:
	FUNC10(mbp, hw->mb_mempool);
out:
	return;
}