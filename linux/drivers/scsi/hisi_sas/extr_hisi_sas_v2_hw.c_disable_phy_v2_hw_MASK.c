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
struct hisi_hba {int /*<<< orphan*/  rst_work; int /*<<< orphan*/  wq; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AM_CTRL_GLOBAL ; 
 scalar_t__ AXI_MASTER_CFG_BASE ; 
 int /*<<< orphan*/  PHY_CFG ; 
 int PHY_CFG_ENA_MSK ; 
 int /*<<< orphan*/  PORT_DFX0 ; 
 int /*<<< orphan*/  TXID_AUTO ; 
 int TXID_AUTO_CTB_MSK ; 
 scalar_t__ FUNC0 (struct hisi_hba*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct hisi_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*,scalar_t__,int) ; 
 scalar_t__ FUNC6 (struct hisi_hba*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hisi_hba*,int) ; 

__attribute__((used)) static void FUNC9(struct hisi_hba *hisi_hba, int phy_no)
{
	u32 cfg, axi_val, dfx0_val, txid_auto;
	struct device *dev = hisi_hba->dev;

	/* Close axi bus. */
	axi_val = FUNC4(hisi_hba, AXI_MASTER_CFG_BASE +
				AM_CTRL_GLOBAL);
	axi_val |= 0x1;
	FUNC5(hisi_hba, AXI_MASTER_CFG_BASE +
		AM_CTRL_GLOBAL, axi_val);

	if (FUNC6(hisi_hba, phy_no)) {
		if (FUNC0(hisi_hba, phy_no))
			goto do_disable;

		/* Reset host controller. */
		FUNC7(hisi_hba->wq, &hisi_hba->rst_work);
		return;
	}

	dfx0_val = FUNC2(hisi_hba, phy_no, PORT_DFX0);
	dfx0_val = (dfx0_val & 0x1fc0) >> 6;
	if (dfx0_val != 0x4)
		goto do_disable;

	if (!FUNC8(hisi_hba, phy_no)) {
		FUNC1(dev, "phy%d, wait tx fifo need send break\n",
			phy_no);
		txid_auto = FUNC2(hisi_hba, phy_no,
					TXID_AUTO);
		txid_auto |= TXID_AUTO_CTB_MSK;
		FUNC3(hisi_hba, phy_no, TXID_AUTO,
					txid_auto);
	}

do_disable:
	cfg = FUNC2(hisi_hba, phy_no, PHY_CFG);
	cfg &= ~PHY_CFG_ENA_MSK;
	FUNC3(hisi_hba, phy_no, PHY_CFG, cfg);

	/* Open axi bus. */
	axi_val &= ~0x1;
	FUNC5(hisi_hba, AXI_MASTER_CFG_BASE +
		AM_CTRL_GLOBAL, axi_val);
}