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
struct csio_hw {TYPE_1__* chip_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_pcie_intr_handler ) (struct csio_hw*) ;} ;

/* Variables and functions */
 int CIM_F ; 
 int CPL_SWITCH_F ; 
 int CSIO_GLBL_INTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int EDC0_F ; 
 int EDC1_F ; 
 int LE_F ; 
 int MA_F ; 
 int MC_F ; 
 int /*<<< orphan*/  MEM_EDC0 ; 
 int /*<<< orphan*/  MEM_EDC1 ; 
 int /*<<< orphan*/  MEM_MC ; 
 int MPS_F ; 
 int NCSI_F ; 
 int PCIE_F ; 
 int PL_F ; 
 int /*<<< orphan*/  PL_INT_CAUSE_A ; 
 int PM_RX_F ; 
 int PM_TX_F ; 
 int SGE_F ; 
 int SMB_F ; 
 int TP_F ; 
 int ULP_RX_F ; 
 int ULP_TX_F ; 
 int XGMAC0_F ; 
 int XGMAC1_F ; 
 int XGMAC_KR0_F ; 
 int XGMAC_KR1_F ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct csio_hw*) ; 
 int FUNC12 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  n_plint_cnt ; 
 int /*<<< orphan*/  n_plint_unexp ; 
 int /*<<< orphan*/  FUNC20 (struct csio_hw*) ; 

int
FUNC21(struct csio_hw *hw)
{
	uint32_t cause = FUNC12(hw, PL_INT_CAUSE_A);

	if (!(cause & CSIO_GLBL_INTR_MASK)) {
		FUNC0(hw, n_plint_unexp);
		return 0;
	}

	FUNC3(hw, "Slow interrupt! cause: 0x%x\n", cause);

	FUNC0(hw, n_plint_cnt);

	if (cause & CIM_F)
		FUNC1(hw);

	if (cause & MPS_F)
		FUNC7(hw);

	if (cause & NCSI_F)
		FUNC8(hw);

	if (cause & PL_F)
		FUNC9(hw);

	if (cause & SMB_F)
		FUNC14(hw);

	if (cause & XGMAC0_F)
		FUNC19(hw, 0);

	if (cause & XGMAC1_F)
		FUNC19(hw, 1);

	if (cause & XGMAC_KR0_F)
		FUNC19(hw, 2);

	if (cause & XGMAC_KR1_F)
		FUNC19(hw, 3);

	if (cause & PCIE_F)
		hw->chip_ops->chip_pcie_intr_handler(hw);

	if (cause & MC_F)
		FUNC6(hw, MEM_MC);

	if (cause & EDC0_F)
		FUNC6(hw, MEM_EDC0);

	if (cause & EDC1_F)
		FUNC6(hw, MEM_EDC1);

	if (cause & LE_F)
		FUNC4(hw);

	if (cause & TP_F)
		FUNC15(hw);

	if (cause & MA_F)
		FUNC5(hw);

	if (cause & PM_TX_F)
		FUNC11(hw);

	if (cause & PM_RX_F)
		FUNC10(hw);

	if (cause & ULP_RX_F)
		FUNC16(hw);

	if (cause & CPL_SWITCH_F)
		FUNC2(hw);

	if (cause & SGE_F)
		FUNC13(hw);

	if (cause & ULP_TX_F)
		FUNC17(hw);

	/* Clear the interrupts just processed for which we are the master. */
	FUNC18(hw, cause & CSIO_GLBL_INTR_MASK, PL_INT_CAUSE_A);
	FUNC12(hw, PL_INT_CAUSE_A); /* flush */

	return 1;
}