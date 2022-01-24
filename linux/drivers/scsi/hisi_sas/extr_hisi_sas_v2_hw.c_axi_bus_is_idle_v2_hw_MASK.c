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
struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AM_CURR_TRANS_RETURN ; 
 int /*<<< orphan*/  AXI_CFG ; 
 scalar_t__ AXI_MASTER_CFG_BASE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TX_DFX1 ; 
 int /*<<< orphan*/  DMA_TX_FIFO_DFX0 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int,int,int,int) ; 
 int FUNC2 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hisi_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct hisi_hba *hisi_hba, int phy_no)
{
	int i, max_loop = 1000;
	struct device *dev = hisi_hba->dev;
	u32 status, axi_status, dfx_val, dfx_tx_val;

	for (i = 0; i < max_loop; i++) {
		status = FUNC4(hisi_hba,
			AXI_MASTER_CFG_BASE + AM_CURR_TRANS_RETURN);

		axi_status = FUNC3(hisi_hba, AXI_CFG);
		dfx_val = FUNC2(hisi_hba, phy_no, DMA_TX_DFX1);
		dfx_tx_val = FUNC2(hisi_hba,
			phy_no, DMA_TX_FIFO_DFX0);

		if ((status == 0x3) && (axi_status == 0x0) &&
		    (dfx_val & FUNC0(20)) && (dfx_tx_val & FUNC0(10)))
			return true;
		FUNC5(10);
	}
	FUNC1(dev, "bus is not idle phy%d, axi150:0x%x axi100:0x%x port204:0x%x port240:0x%x\n",
			phy_no, status, axi_status,
			dfx_val, dfx_tx_val);
	return false;
}