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
struct csio_hw {int /*<<< orphan*/  fwevt_iq_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ CSIO_MAX_QID ; 
 int EINVAL ; 
 int /*<<< orphan*/  csio_process_fwevtq_entry ; 
 scalar_t__ FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_int_stray ; 

int
FUNC3(struct csio_hw *hw)
{
	int rv;

	if (FUNC1(hw, hw->fwevt_iq_idx) == CSIO_MAX_QID) {
		FUNC0(hw, n_int_stray);
		return -EINVAL;
	}

	rv = FUNC2(hw, hw->fwevt_iq_idx,
			   csio_process_fwevtq_entry, NULL);
	return rv;
}