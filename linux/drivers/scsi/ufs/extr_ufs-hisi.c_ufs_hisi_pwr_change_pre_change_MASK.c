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
struct ufs_hisi_host {int caps; } ;
struct ufs_hba {int dev_quirks; } ;

/* Variables and functions */
 int UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME ; 
 int UFS_HISI_CAP_PHY10nm ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 
 struct ufs_hisi_host* FUNC4 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC5(struct ufs_hba *hba)
{
	struct ufs_hisi_host *host = FUNC4(hba);

	if (host->caps & UFS_HISI_CAP_PHY10nm) {
		/*
		 * Boston platform need to set SaveConfigTime to 0x13,
		 * and change sync length to maximum value
		 */
		/* VS_DebugSaveConfigTime */
		FUNC3(hba, FUNC0((u32)0xD0A0), 0x13);
		/* g1 sync length */
		FUNC3(hba, FUNC0((u32)0x1552), 0x4f);
		/* g2 sync length */
		FUNC3(hba, FUNC0((u32)0x1554), 0x4f);
		/* g3 sync length */
		FUNC3(hba, FUNC0((u32)0x1556), 0x4f);
		/* PA_Hibern8Time */
		FUNC3(hba, FUNC0((u32)0x15a7), 0xA);
		/* PA_Tactivate */
		FUNC3(hba, FUNC0((u32)0x15a8), 0xA);
		FUNC3(hba, FUNC1(0xd085, 0x0), 0x01);
	}

	if (hba->dev_quirks & UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME) {
		FUNC2("ufs flash device must set VS_DebugSaveConfigTime 0x10\n");
		/* VS_DebugSaveConfigTime */
		FUNC3(hba, FUNC0(0xD0A0), 0x10);
		/* sync length */
		FUNC3(hba, FUNC0(0x1556), 0x48);
	}

	/* update */
	FUNC3(hba, FUNC0(0x15A8), 0x1);
	/* PA_TxSkip */
	FUNC3(hba, FUNC0(0x155c), 0x0);
	/*PA_PWRModeUserData0 = 8191, default is 0*/
	FUNC3(hba, FUNC0(0x15b0), 8191);
	/*PA_PWRModeUserData1 = 65535, default is 0*/
	FUNC3(hba, FUNC0(0x15b1), 65535);
	/*PA_PWRModeUserData2 = 32767, default is 0*/
	FUNC3(hba, FUNC0(0x15b2), 32767);
	/*DME_FC0ProtectionTimeOutVal = 8191, default is 0*/
	FUNC3(hba, FUNC0(0xd041), 8191);
	/*DME_TC0ReplayTimeOutVal = 65535, default is 0*/
	FUNC3(hba, FUNC0(0xd042), 65535);
	/*DME_AFC0ReqTimeOutVal = 32767, default is 0*/
	FUNC3(hba, FUNC0(0xd043), 32767);
	/*PA_PWRModeUserData3 = 8191, default is 0*/
	FUNC3(hba, FUNC0(0x15b3), 8191);
	/*PA_PWRModeUserData4 = 65535, default is 0*/
	FUNC3(hba, FUNC0(0x15b4), 65535);
	/*PA_PWRModeUserData5 = 32767, default is 0*/
	FUNC3(hba, FUNC0(0x15b5), 32767);
	/*DME_FC1ProtectionTimeOutVal = 8191, default is 0*/
	FUNC3(hba, FUNC0(0xd044), 8191);
	/*DME_TC1ReplayTimeOutVal = 65535, default is 0*/
	FUNC3(hba, FUNC0(0xd045), 65535);
	/*DME_AFC1ReqTimeOutVal = 32767, default is 0*/
	FUNC3(hba, FUNC0(0xd046), 32767);
}