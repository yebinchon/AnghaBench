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
struct csio_hw {scalar_t__ fw_state; int flags; } ;

/* Variables and functions */
 scalar_t__ CSIO_DEV_STATE_INIT ; 
 int CSIO_HWF_USING_SOFT_PARAMS ; 
 scalar_t__ FUNC0 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*) ; 

void
FUNC4(struct csio_hw *hw)
{
	/*
	 * If we are master and chip is not initialized:
	 *    - If we plan to use the config file, we need to fixup some
	 *      host specific registers, and read the rest of the SGE
	 *      configuration.
	 *    - If we dont plan to use the config file, we need to initialize
	 *      SGE entirely, including fixing the host specific registers.
	 * If we are master and chip is initialized, just read and work off of
	 *	the already initialized SGE values.
	 * If we arent the master, we are only allowed to read and work off of
	 *      the already initialized SGE values.
	 *
	 * Therefore, before calling this function, we assume that the master-
	 * ship of the card, state and whether to use config file or not, have
	 * already been decided.
	 */
	if (FUNC0(hw)) {
		if (hw->fw_state != CSIO_DEV_STATE_INIT)
			FUNC1(hw);

		if (hw->flags & CSIO_HWF_USING_SOFT_PARAMS)
			FUNC2(hw);
		else
			FUNC3(hw);
	} else
		FUNC2(hw);
}