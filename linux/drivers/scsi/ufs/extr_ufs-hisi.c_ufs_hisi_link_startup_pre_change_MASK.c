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
typedef  int uint32_t ;
struct ufs_hisi_host {int caps; } ;
struct ufs_hba {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_AUTO_HIBERNATE_IDLE_TIMER ; 
 int UFS_AHIT_AH8ITV_MASK ; 
 int UFS_HCLKDIV_NORMAL_VALUE ; 
 int UFS_HISI_CAP_PHY10nm ; 
 int /*<<< orphan*/  UFS_REG_HCLKDIV ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 
 struct ufs_hisi_host* FUNC6 (struct ufs_hba*) ; 
 int FUNC7 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hba*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ufs_hba *hba)
{
	struct ufs_hisi_host *host = FUNC6(hba);
	int err;
	uint32_t value;
	uint32_t reg;

	/* Unipro VS_mphy_disable */
	FUNC5(hba, FUNC0(0xD0C1, 0x0), 0x1);
	/* PA_HSSeries */
	FUNC5(hba, FUNC0(0x156A, 0x0), 0x2);
	/* MPHY CBRATESEL */
	FUNC5(hba, FUNC0(0x8114, 0x0), 0x1);
	/* MPHY CBOVRCTRL2 */
	FUNC5(hba, FUNC0(0x8121, 0x0), 0x2D);
	/* MPHY CBOVRCTRL3 */
	FUNC5(hba, FUNC0(0x8122, 0x0), 0x1);

	if (host->caps & UFS_HISI_CAP_PHY10nm) {
		/* MPHY CBOVRCTRL4 */
		FUNC5(hba, FUNC0(0x8127, 0x0), 0x98);
		/* MPHY CBOVRCTRL5 */
		FUNC5(hba, FUNC0(0x8128, 0x0), 0x1);
	}

	/* Unipro VS_MphyCfgUpdt */
	FUNC5(hba, FUNC0(0xD085, 0x0), 0x1);
	/* MPHY RXOVRCTRL4 rx0 */
	FUNC5(hba, FUNC0(0x800D, 0x4), 0x58);
	/* MPHY RXOVRCTRL4 rx1 */
	FUNC5(hba, FUNC0(0x800D, 0x5), 0x58);
	/* MPHY RXOVRCTRL5 rx0 */
	FUNC5(hba, FUNC0(0x800E, 0x4), 0xB);
	/* MPHY RXOVRCTRL5 rx1 */
	FUNC5(hba, FUNC0(0x800E, 0x5), 0xB);
	/* MPHY RXSQCONTROL rx0 */
	FUNC5(hba, FUNC0(0x8009, 0x4), 0x1);
	/* MPHY RXSQCONTROL rx1 */
	FUNC5(hba, FUNC0(0x8009, 0x5), 0x1);
	/* Unipro VS_MphyCfgUpdt */
	FUNC5(hba, FUNC0(0xD085, 0x0), 0x1);

	FUNC5(hba, FUNC0(0x8113, 0x0), 0x1);
	FUNC5(hba, FUNC0(0xD085, 0x0), 0x1);

	if (host->caps & UFS_HISI_CAP_PHY10nm) {
		/* RX_Hibern8Time_Capability*/
		FUNC5(hba, FUNC0(0x0092, 0x4), 0xA);
		/* RX_Hibern8Time_Capability*/
		FUNC5(hba, FUNC0(0x0092, 0x5), 0xA);
		/* RX_Min_ActivateTime */
		FUNC5(hba, FUNC0(0x008f, 0x4), 0xA);
		/* RX_Min_ActivateTime*/
		FUNC5(hba, FUNC0(0x008f, 0x5), 0xA);
	} else {
		/* Tactive RX */
		FUNC5(hba, FUNC0(0x008F, 0x4), 0x7);
		/* Tactive RX */
		FUNC5(hba, FUNC0(0x008F, 0x5), 0x7);
	}

	/* Gear3 Synclength */
	FUNC5(hba, FUNC0(0x0095, 0x4), 0x4F);
	/* Gear3 Synclength */
	FUNC5(hba, FUNC0(0x0095, 0x5), 0x4F);
	/* Gear2 Synclength */
	FUNC5(hba, FUNC0(0x0094, 0x4), 0x4F);
	/* Gear2 Synclength */
	FUNC5(hba, FUNC0(0x0094, 0x5), 0x4F);
	/* Gear1 Synclength */
	FUNC5(hba, FUNC0(0x008B, 0x4), 0x4F);
	/* Gear1 Synclength */
	FUNC5(hba, FUNC0(0x008B, 0x5), 0x4F);
	/* Thibernate Tx */
	FUNC5(hba, FUNC0(0x000F, 0x0), 0x5);
	/* Thibernate Tx */
	FUNC5(hba, FUNC0(0x000F, 0x1), 0x5);

	FUNC5(hba, FUNC0(0xD085, 0x0), 0x1);
	/* Unipro VS_mphy_disable */
	FUNC4(hba, FUNC0(0xD0C1, 0x0), &value);
	if (value != 0x1)
		FUNC2(hba->dev,
		    "Warring!!! Unipro VS_mphy_disable is 0x%x\n", value);

	/* Unipro VS_mphy_disable */
	FUNC5(hba, FUNC0(0xD0C1, 0x0), 0x0);
	err = FUNC3(hba);
	if (err)
		FUNC1(hba->dev, "ufs_hisi_check_hibern8 error\n");

	if (!(host->caps & UFS_HISI_CAP_PHY10nm))
		FUNC8(hba, UFS_HCLKDIV_NORMAL_VALUE, UFS_REG_HCLKDIV);

	/* disable auto H8 */
	reg = FUNC7(hba, REG_AUTO_HIBERNATE_IDLE_TIMER);
	reg = reg & (~UFS_AHIT_AH8ITV_MASK);
	FUNC8(hba, reg, REG_AUTO_HIBERNATE_IDLE_TIMER);

	/* Unipro PA_Local_TX_LCC_Enable */
	FUNC5(hba, FUNC0(0x155E, 0x0), 0x0);
	/* close Unipro VS_Mk2ExtnSupport */
	FUNC5(hba, FUNC0(0xD0AB, 0x0), 0x0);
	FUNC4(hba, FUNC0(0xD0AB, 0x0), &value);
	if (value != 0) {
		/* Ensure close success */
		FUNC2(hba->dev, "WARN: close VS_Mk2ExtnSupport failed\n");
	}

	return err;
}