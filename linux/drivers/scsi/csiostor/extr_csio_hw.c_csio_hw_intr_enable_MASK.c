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
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int u32 ;
struct csio_hw {scalar_t__ intr_mode; int /*<<< orphan*/  flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIVEC_M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_HWF_HW_INTR_ENABLED ; 
 int CSIO_HW_CHIP_MASK ; 
 scalar_t__ CSIO_IM_MSI ; 
 scalar_t__ CSIO_IM_MSIX ; 
 int EGRESS_SIZE_ERR_F ; 
 int ERR_BAD_DB_PIDX0_F ; 
 int ERR_BAD_DB_PIDX1_F ; 
 int ERR_BAD_DB_PIDX2_F ; 
 int ERR_BAD_DB_PIDX3_F ; 
 int ERR_CPL_EXCEED_IQE_SIZE_F ; 
 int ERR_CPL_OPCODE_0_F ; 
 int ERR_DATA_CPL_ON_HIGH_QID0_F ; 
 int ERR_DATA_CPL_ON_HIGH_QID1_F ; 
 int ERR_DROPPED_DB_F ; 
 int ERR_EGR_CTXT_PRIO_F ; 
 int ERR_ING_CTXT_PRIO_F ; 
 int ERR_INVALID_CIDX_INC_F ; 
 int INGRESS_SIZE_ERR_F ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_PF_CFG_A ; 
 int PF_INTR_MASK ; 
 int /*<<< orphan*/  PL_INT_ENABLE_A ; 
 int /*<<< orphan*/  PL_INT_MAP0_A ; 
 int /*<<< orphan*/  PL_PF_INT_ENABLE_A ; 
 int /*<<< orphan*/  PL_WHOAMI_A ; 
 int SF_F ; 
 int /*<<< orphan*/  SGE_INT_ENABLE3_A ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*) ; 
 scalar_t__ FUNC6 (struct csio_hw*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*) ; 
 int FUNC9 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct csio_hw *hw)
{
	uint16_t vec = (uint16_t)FUNC4(FUNC5(hw));
	u32 pf = 0;
	uint32_t pl = FUNC9(hw, PL_INT_ENABLE_A);

	if (FUNC7(hw->pdev->device & CSIO_HW_CHIP_MASK))
		pf = FUNC2(FUNC9(hw, PL_WHOAMI_A));
	else
		pf = FUNC3(FUNC9(hw, PL_WHOAMI_A));

	/*
	 * Set aivec for MSI/MSIX. PCIE_PF_CFG.INTXType is set up
	 * by FW, so do nothing for INTX.
	 */
	if (hw->intr_mode == CSIO_IM_MSIX)
		FUNC10(hw, FUNC1(PCIE_PF_CFG_A),
				   FUNC0(AIVEC_M), vec);
	else if (hw->intr_mode == CSIO_IM_MSI)
		FUNC10(hw, FUNC1(PCIE_PF_CFG_A),
				   FUNC0(AIVEC_M), 0);

	FUNC11(hw, PF_INTR_MASK, FUNC1(PL_PF_INT_ENABLE_A));

	/* Turn on MB interrupts - this will internally flush PIO as well */
	FUNC8(hw);

	/* These are common registers - only a master can modify them */
	if (FUNC6(hw)) {
		/*
		 * Disable the Serial FLASH interrupt, if enabled!
		 */
		pl &= (~SF_F);
		FUNC11(hw, pl, PL_INT_ENABLE_A);

		FUNC11(hw, ERR_CPL_EXCEED_IQE_SIZE_F |
			      EGRESS_SIZE_ERR_F | ERR_INVALID_CIDX_INC_F |
			      ERR_CPL_OPCODE_0_F | ERR_DROPPED_DB_F |
			      ERR_DATA_CPL_ON_HIGH_QID1_F |
			      ERR_DATA_CPL_ON_HIGH_QID0_F | ERR_BAD_DB_PIDX3_F |
			      ERR_BAD_DB_PIDX2_F | ERR_BAD_DB_PIDX1_F |
			      ERR_BAD_DB_PIDX0_F | ERR_ING_CTXT_PRIO_F |
			      ERR_EGR_CTXT_PRIO_F | INGRESS_SIZE_ERR_F,
			      SGE_INT_ENABLE3_A);
		FUNC10(hw, PL_INT_MAP0_A, 0, 1 << pf);
	}

	hw->flags |= CSIO_HWF_HW_INTR_ENABLED;

}