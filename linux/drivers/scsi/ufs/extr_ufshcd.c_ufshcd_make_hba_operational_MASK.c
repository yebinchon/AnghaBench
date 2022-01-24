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
typedef  int /*<<< orphan*/  u32 ;
struct ufs_hba {int /*<<< orphan*/  dev; int /*<<< orphan*/  utmrdl_dma_addr; int /*<<< orphan*/  utrdl_dma_addr; scalar_t__ nutrs; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  INT_AGGR_DEF_TO ; 
 int /*<<< orphan*/  REG_CONTROLLER_STATUS ; 
 int /*<<< orphan*/  REG_UTP_TASK_REQ_LIST_BASE_H ; 
 int /*<<< orphan*/  REG_UTP_TASK_REQ_LIST_BASE_L ; 
 int /*<<< orphan*/  REG_UTP_TRANSFER_REQ_LIST_BASE_H ; 
 int /*<<< orphan*/  REG_UTP_TRANSFER_REQ_LIST_BASE_L ; 
 int /*<<< orphan*/  UFSHCD_ENABLE_INTRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct ufs_hba *hba)
{
	int err = 0;
	u32 reg;

	/* Enable required interrupts */
	FUNC4(hba, UFSHCD_ENABLE_INTRS);

	/* Configure interrupt aggregation */
	if (FUNC7(hba))
		FUNC2(hba, hba->nutrs - 1, INT_AGGR_DEF_TO);
	else
		FUNC3(hba);

	/* Configure UTRL and UTMRL base address registers */
	FUNC9(hba, FUNC1(hba->utrdl_dma_addr),
			REG_UTP_TRANSFER_REQ_LIST_BASE_L);
	FUNC9(hba, FUNC10(hba->utrdl_dma_addr),
			REG_UTP_TRANSFER_REQ_LIST_BASE_H);
	FUNC9(hba, FUNC1(hba->utmrdl_dma_addr),
			REG_UTP_TASK_REQ_LIST_BASE_L);
	FUNC9(hba, FUNC10(hba->utmrdl_dma_addr),
			REG_UTP_TASK_REQ_LIST_BASE_H);

	/*
	 * Make sure base address and interrupt setup are updated before
	 * enabling the run/stop registers below.
	 */
	FUNC11();

	/*
	 * UCRDY, UTMRLDY and UTRLRDY bits must be 1
	 */
	reg = FUNC8(hba, REG_CONTROLLER_STATUS);
	if (!(FUNC6(reg))) {
		FUNC5(hba);
	} else {
		FUNC0(hba->dev,
			"Host controller not ready to process requests");
		err = -EIO;
		goto out;
	}

out:
	return err;
}