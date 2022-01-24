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
typedef  int u32 ;
struct hisi_hba {unsigned long long queue_count; int n_phy; int /*<<< orphan*/  breakpoint_dma; int /*<<< orphan*/  iost_dma; int /*<<< orphan*/  itct_dma; int /*<<< orphan*/ * complete_hdr_dma; int /*<<< orphan*/ * cmd_hdr_dma; } ;

/* Variables and functions */
 scalar_t__ AXI_AHB_CLK_CFG ; 
 scalar_t__ BROKEN_MSG_ADDR_HI ; 
 scalar_t__ BROKEN_MSG_ADDR_LO ; 
 scalar_t__ BUS_INACTIVE_LIMIT_TIME ; 
 scalar_t__ CFG_1US_TIMER_TRSH ; 
 scalar_t__ CFG_AGING_TIME ; 
 scalar_t__ CFG_SAS_CONFIG ; 
 int /*<<< orphan*/  CHL_INT_COAL_EN ; 
 scalar_t__ COMPL_Q_0_BASE_ADDR_HI ; 
 scalar_t__ COMPL_Q_0_BASE_ADDR_LO ; 
 scalar_t__ COMPL_Q_0_DEPTH ; 
 int /*<<< orphan*/  CON_CFG_DRIVER ; 
 scalar_t__ DEVICE_MSG_WORK_MODE ; 
 scalar_t__ DLVRY_QUEUE_ENABLE ; 
 scalar_t__ DLVRY_Q_0_BASE_ADDR_HI ; 
 scalar_t__ DLVRY_Q_0_BASE_ADDR_LO ; 
 scalar_t__ DLVRY_Q_0_DEPTH ; 
 int /*<<< orphan*/  DONE_RECEIVED_TIME ; 
 scalar_t__ ENT_INT_COAL_CNT ; 
 scalar_t__ ENT_INT_COAL_TIME ; 
 scalar_t__ ENT_INT_SRC1 ; 
 scalar_t__ ENT_INT_SRC2 ; 
 scalar_t__ ENT_INT_SRC_MSK1 ; 
 scalar_t__ ENT_INT_SRC_MSK2 ; 
 scalar_t__ FIS_LIST_BADDR_L ; 
 scalar_t__ HGC_DFX_CFG2 ; 
 scalar_t__ HGC_ERR_STAT_EN ; 
 scalar_t__ HGC_GET_ITV_TIME ; 
 scalar_t__ HGC_SAS_TXFAIL_RETRY_CTRL ; 
 scalar_t__ HGC_TRANS_TASK_CNT_LIMIT ; 
 int HISI_SAS_QUEUE_SLOTS ; 
 scalar_t__ INT_COAL_EN ; 
 scalar_t__ IOST_BASE_ADDR_HI ; 
 scalar_t__ IOST_BASE_ADDR_LO ; 
 scalar_t__ ITCT_BASE_ADDR_HI ; 
 scalar_t__ ITCT_BASE_ADDR_LO ; 
 scalar_t__ I_T_NEXUS_LOSS_TIME ; 
 scalar_t__ OQ_INT_COAL_CNT ; 
 scalar_t__ OQ_INT_COAL_TIME ; 
 scalar_t__ OQ_INT_SRC ; 
 scalar_t__ OQ_INT_SRC_MSK ; 
 int /*<<< orphan*/  PHY_CONFIG2 ; 
 int /*<<< orphan*/  PHY_PCN ; 
 int /*<<< orphan*/  PHY_RATE_NEGO ; 
 int /*<<< orphan*/  PROG_PHY_LINK_RATE ; 
 scalar_t__ REJECT_TO_OPEN_LIMIT_TIME ; 
 int /*<<< orphan*/  RXOP_CHECK_CFG_H ; 
 scalar_t__ SAS_ECC_INTR_MSK ; 
 int /*<<< orphan*/  SL_TOUT_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hisi_hba *hisi_hba)
{
	int i;

	/* Global registers init*/
	FUNC1(hisi_hba, DLVRY_QUEUE_ENABLE,
			 (u32)((1ULL << hisi_hba->queue_count) - 1));
	FUNC1(hisi_hba, HGC_TRANS_TASK_CNT_LIMIT, 0x11);
	FUNC1(hisi_hba, DEVICE_MSG_WORK_MODE, 0x1);
	FUNC1(hisi_hba, HGC_SAS_TXFAIL_RETRY_CTRL, 0x1ff);
	FUNC1(hisi_hba, HGC_ERR_STAT_EN, 0x401);
	FUNC1(hisi_hba, CFG_1US_TIMER_TRSH, 0x64);
	FUNC1(hisi_hba, HGC_GET_ITV_TIME, 0x1);
	FUNC1(hisi_hba, I_T_NEXUS_LOSS_TIME, 0x64);
	FUNC1(hisi_hba, BUS_INACTIVE_LIMIT_TIME, 0x2710);
	FUNC1(hisi_hba, REJECT_TO_OPEN_LIMIT_TIME, 0x1);
	FUNC1(hisi_hba, CFG_AGING_TIME, 0x7a12);
	FUNC1(hisi_hba, HGC_DFX_CFG2, 0x9c40);
	FUNC1(hisi_hba, FIS_LIST_BADDR_L, 0x2);
	FUNC1(hisi_hba, INT_COAL_EN, 0xc);
	FUNC1(hisi_hba, OQ_INT_COAL_TIME, 0x186a0);
	FUNC1(hisi_hba, OQ_INT_COAL_CNT, 1);
	FUNC1(hisi_hba, ENT_INT_COAL_TIME, 0x1);
	FUNC1(hisi_hba, ENT_INT_COAL_CNT, 0x1);
	FUNC1(hisi_hba, OQ_INT_SRC, 0xffffffff);
	FUNC1(hisi_hba, OQ_INT_SRC_MSK, 0);
	FUNC1(hisi_hba, ENT_INT_SRC1, 0xffffffff);
	FUNC1(hisi_hba, ENT_INT_SRC_MSK1, 0);
	FUNC1(hisi_hba, ENT_INT_SRC2, 0xffffffff);
	FUNC1(hisi_hba, ENT_INT_SRC_MSK2, 0);
	FUNC1(hisi_hba, SAS_ECC_INTR_MSK, 0);
	FUNC1(hisi_hba, AXI_AHB_CLK_CFG, 0x2);
	FUNC1(hisi_hba, CFG_SAS_CONFIG, 0x22000000);

	for (i = 0; i < hisi_hba->n_phy; i++) {
		FUNC0(hisi_hba, i, PROG_PHY_LINK_RATE, 0x88a);
		FUNC0(hisi_hba, i, PHY_CONFIG2, 0x7c080);
		FUNC0(hisi_hba, i, PHY_RATE_NEGO, 0x415ee00);
		FUNC0(hisi_hba, i, PHY_PCN, 0x80a80000);
		FUNC0(hisi_hba, i, SL_TOUT_CFG, 0x7d7d7d7d);
		FUNC0(hisi_hba, i, DONE_RECEIVED_TIME, 0x0);
		FUNC0(hisi_hba, i, RXOP_CHECK_CFG_H, 0x1000);
		FUNC0(hisi_hba, i, DONE_RECEIVED_TIME, 0);
		FUNC0(hisi_hba, i, CON_CFG_DRIVER, 0x13f0a);
		FUNC0(hisi_hba, i, CHL_INT_COAL_EN, 3);
		FUNC0(hisi_hba, i, DONE_RECEIVED_TIME, 8);
	}

	for (i = 0; i < hisi_hba->queue_count; i++) {
		/* Delivery queue */
		FUNC1(hisi_hba,
				 DLVRY_Q_0_BASE_ADDR_HI + (i * 0x14),
				 FUNC3(hisi_hba->cmd_hdr_dma[i]));

		FUNC1(hisi_hba,
				 DLVRY_Q_0_BASE_ADDR_LO + (i * 0x14),
				 FUNC2(hisi_hba->cmd_hdr_dma[i]));

		FUNC1(hisi_hba,
				 DLVRY_Q_0_DEPTH + (i * 0x14),
				 HISI_SAS_QUEUE_SLOTS);

		/* Completion queue */
		FUNC1(hisi_hba,
				 COMPL_Q_0_BASE_ADDR_HI + (i * 0x14),
				 FUNC3(hisi_hba->complete_hdr_dma[i]));

		FUNC1(hisi_hba,
				 COMPL_Q_0_BASE_ADDR_LO + (i * 0x14),
				 FUNC2(hisi_hba->complete_hdr_dma[i]));

		FUNC1(hisi_hba, COMPL_Q_0_DEPTH + (i * 0x14),
				 HISI_SAS_QUEUE_SLOTS);
	}

	/* itct */
	FUNC1(hisi_hba, ITCT_BASE_ADDR_LO,
			 FUNC2(hisi_hba->itct_dma));

	FUNC1(hisi_hba, ITCT_BASE_ADDR_HI,
			 FUNC3(hisi_hba->itct_dma));

	/* iost */
	FUNC1(hisi_hba, IOST_BASE_ADDR_LO,
			 FUNC2(hisi_hba->iost_dma));

	FUNC1(hisi_hba, IOST_BASE_ADDR_HI,
			 FUNC3(hisi_hba->iost_dma));

	/* breakpoint */
	FUNC1(hisi_hba, BROKEN_MSG_ADDR_LO,
			 FUNC2(hisi_hba->breakpoint_dma));

	FUNC1(hisi_hba, BROKEN_MSG_ADDR_HI,
			 FUNC3(hisi_hba->breakpoint_dma));
}