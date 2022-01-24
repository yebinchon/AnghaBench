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
typedef  int u32 ;
struct csio_hw {int flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int CSIO_HWF_HW_INTR_ENABLED ; 
 int CSIO_HW_CHIP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PL_INT_MAP0_A ; 
 int /*<<< orphan*/  PL_PF_INT_ENABLE_A ; 
 int /*<<< orphan*/  PL_WHOAMI_A ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct csio_hw*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(struct csio_hw *hw)
{
	u32 pf = 0;

	if (FUNC4(hw->pdev->device & CSIO_HW_CHIP_MASK))
		pf = FUNC1(FUNC6(hw, PL_WHOAMI_A));
	else
		pf = FUNC2(FUNC6(hw, PL_WHOAMI_A));

	if (!(hw->flags & CSIO_HWF_HW_INTR_ENABLED))
		return;

	hw->flags &= ~CSIO_HWF_HW_INTR_ENABLED;

	FUNC8(hw, 0, FUNC0(PL_PF_INT_ENABLE_A));
	if (FUNC3(hw))
		FUNC7(hw, PL_INT_MAP0_A, 1 << pf, 0);

	/* Turn off MB interrupts */
	FUNC5(hw);

}