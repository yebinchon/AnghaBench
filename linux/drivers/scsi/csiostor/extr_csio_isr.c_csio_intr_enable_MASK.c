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
struct csio_hw {scalar_t__ intr_mode; int flags; scalar_t__ cfg_niq; scalar_t__ num_sqsets; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int CSIO_EXTRA_MSI_IQS ; 
 int CSIO_HWF_HOST_INTR_ENABLED ; 
 int CSIO_HWF_USING_SOFT_PARAMS ; 
 scalar_t__ CSIO_IM_INTX ; 
 scalar_t__ CSIO_IM_MSI ; 
 scalar_t__ CSIO_IM_MSIX ; 
 scalar_t__ CSIO_IM_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int csio_msi ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct csio_hw *hw)
{
	hw->intr_mode = CSIO_IM_NONE;
	hw->flags &= ~CSIO_HWF_HOST_INTR_ENABLED;

	/* Try MSIX, then MSI or fall back to INTx */
	if ((csio_msi == 2) && !FUNC1(hw))
		hw->intr_mode = CSIO_IM_MSIX;
	else {
		/* Max iqs required based on #niqs configured in fw */
		if (hw->flags & CSIO_HWF_USING_SOFT_PARAMS ||
			!FUNC2(hw)) {
			int extra = CSIO_EXTRA_MSI_IQS;

			if (hw->cfg_niq < (hw->num_sqsets + extra)) {
				FUNC0(hw, "Reducing sqsets to %d\n",
					 hw->cfg_niq - extra);
				FUNC3(hw, hw->cfg_niq - extra);
			}
		}

		if ((csio_msi == 1) && !FUNC4(hw->pdev))
			hw->intr_mode = CSIO_IM_MSI;
		else
			hw->intr_mode = CSIO_IM_INTX;
	}

	FUNC0(hw, "Using %s interrupt mode.\n",
		(hw->intr_mode == CSIO_IM_MSIX) ? "MSIX" :
		((hw->intr_mode == CSIO_IM_MSI) ? "MSI" : "INTx"));
}