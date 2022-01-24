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
struct hisi_sas_phy {int /*<<< orphan*/  timer; } ;
struct hisi_hba {struct device* dev; struct hisi_sas_phy* phy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHL_INT0 ; 
 int CHL_INT0_NOT_RDY_MSK ; 
 int CT3_MSK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PHYCTRL_NOT_RDY_MSK ; 
 int /*<<< orphan*/  PHY_STATE ; 
 int /*<<< orphan*/  SL_CONTROL ; 
 int SL_CTA_MSK ; 
 int /*<<< orphan*/  TXID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*,int,int) ; 
 int FUNC3 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hisi_hba*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int phy_no, struct hisi_hba *hisi_hba)
{
	struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
	u32 phy_state, sl_ctrl, txid_auto;
	struct device *dev = hisi_hba->dev;

	FUNC0(&phy->timer);
	FUNC4(hisi_hba, phy_no, PHYCTRL_NOT_RDY_MSK, 1);

	phy_state = FUNC5(hisi_hba, PHY_STATE);
	FUNC1(dev, "phydown: phy%d phy_state=0x%x\n", phy_no, phy_state);
	FUNC2(hisi_hba, phy_no, (phy_state & 1 << phy_no) ? 1 : 0);

	sl_ctrl = FUNC3(hisi_hba, phy_no, SL_CONTROL);
	FUNC4(hisi_hba, phy_no, SL_CONTROL,
						sl_ctrl&(~SL_CTA_MSK));

	txid_auto = FUNC3(hisi_hba, phy_no, TXID_AUTO);
	FUNC4(hisi_hba, phy_no, TXID_AUTO,
						txid_auto | CT3_MSK);

	FUNC4(hisi_hba, phy_no, CHL_INT0, CHL_INT0_NOT_RDY_MSK);
	FUNC4(hisi_hba, phy_no, PHYCTRL_NOT_RDY_MSK, 0);

	return IRQ_HANDLED;
}