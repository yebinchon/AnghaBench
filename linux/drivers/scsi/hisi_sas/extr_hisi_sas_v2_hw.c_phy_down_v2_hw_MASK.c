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
struct hisi_sas_port {int /*<<< orphan*/  id; } ;
struct hisi_sas_phy {int /*<<< orphan*/  timer; struct hisi_sas_port* port; } ;
struct hisi_hba {int /*<<< orphan*/  timer; struct device* dev; struct hisi_sas_phy* phy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHL_INT0 ; 
 int CHL_INT0_NOT_RDY_MSK ; 
 int IRQ_HANDLED ; 
 int /*<<< orphan*/  PHYCTRL_NOT_RDY_MSK ; 
 int /*<<< orphan*/  PHY_STATE ; 
 int /*<<< orphan*/  SL_CONTROL ; 
 int SL_CONTROL_CTA_MSK ; 
 int /*<<< orphan*/  TXID_AUTO ; 
 int TXID_AUTO_CT3_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*,int,int) ; 
 int FUNC5 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(int phy_no, struct hisi_hba *hisi_hba)
{
	u32 phy_state, sl_ctrl, txid_auto;
	struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
	struct hisi_sas_port *port = phy->port;
	struct device *dev = hisi_hba->dev;

	FUNC1(&phy->timer);
	FUNC6(hisi_hba, phy_no, PHYCTRL_NOT_RDY_MSK, 1);

	phy_state = FUNC7(hisi_hba, PHY_STATE);
	FUNC2(dev, "phydown: phy%d phy_state=0x%x\n", phy_no, phy_state);
	FUNC4(hisi_hba, phy_no, (phy_state & 1 << phy_no) ? 1 : 0);

	sl_ctrl = FUNC5(hisi_hba, phy_no, SL_CONTROL);
	FUNC6(hisi_hba, phy_no, SL_CONTROL,
			     sl_ctrl & ~SL_CONTROL_CTA_MSK);
	if (port && !FUNC3(hisi_hba, port->id))
		if (!FUNC0(hisi_hba) &&
				FUNC8(&hisi_hba->timer))
			FUNC1(&hisi_hba->timer);

	txid_auto = FUNC5(hisi_hba, phy_no, TXID_AUTO);
	FUNC6(hisi_hba, phy_no, TXID_AUTO,
			     txid_auto | TXID_AUTO_CT3_MSK);

	FUNC6(hisi_hba, phy_no, CHL_INT0, CHL_INT0_NOT_RDY_MSK);
	FUNC6(hisi_hba, phy_no, PHYCTRL_NOT_RDY_MSK, 0);

	return IRQ_HANDLED;
}