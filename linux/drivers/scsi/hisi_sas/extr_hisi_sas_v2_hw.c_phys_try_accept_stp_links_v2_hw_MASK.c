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
struct hisi_hba {int n_phy; int reject_stp_links_msk; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CON_CONTROL ; 
 int CON_CONTROL_CFG_OPEN_ACC_STP_MSK ; 
 int /*<<< orphan*/  DMA_TX_DFX1 ; 
 int DMA_TX_DFX1_IPTT_MSK ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int FUNC2 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct hisi_hba *hisi_hba)
{
	int phy_no;
	u32 dma_tx_dfx1;

	for (phy_no = 0; phy_no < hisi_hba->n_phy; phy_no++) {
		if (!(hisi_hba->reject_stp_links_msk & FUNC0(phy_no)))
			continue;

		dma_tx_dfx1 = FUNC2(hisi_hba, phy_no,
						DMA_TX_DFX1);
		if (dma_tx_dfx1 & DMA_TX_DFX1_IPTT_MSK) {
			u32 cfg = FUNC2(hisi_hba,
				phy_no, CON_CONTROL);

			cfg |= CON_CONTROL_CFG_OPEN_ACC_STP_MSK;
			FUNC3(hisi_hba, phy_no,
				CON_CONTROL, cfg);
			FUNC1(phy_no, &hisi_hba->reject_stp_links_msk);
		}
	}
}