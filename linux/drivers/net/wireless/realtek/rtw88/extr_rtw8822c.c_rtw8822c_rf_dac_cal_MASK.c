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
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DACK_PATH_8822C ; 
 int DACK_REG_8822C ; 
 int DACK_RF_8822C ; 
 int /*<<< orphan*/  RF_PATH_A ; 
 int /*<<< orphan*/  RF_PATH_B ; 
 int /*<<< orphan*/  RTW_DBG_RFK ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,struct rtw_backup_info*,struct rtw_backup_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*) ; 
 scalar_t__ FUNC5 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*,int /*<<< orphan*/ ,int,int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtw_dev*,struct rtw_backup_info*,struct rtw_backup_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtw_dev*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtw_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct rtw_dev*,int,int) ; 

__attribute__((used)) static void FUNC15(struct rtw_dev *rtwdev)
{
	struct rtw_backup_info backup_rf[DACK_RF_8822C * DACK_PATH_8822C];
	struct rtw_backup_info backup[DACK_REG_8822C];
	u32 ic = 0, qc = 0, i;
	u32 i_a = 0x0, q_a = 0x0, i_b = 0x0, q_b = 0x0;
	u32 ic_a = 0x0, qc_a = 0x0, ic_b = 0x0, qc_b = 0x0;
	u32 adc_ic_a = 0x0, adc_qc_a = 0x0, adc_ic_b = 0x0, adc_qc_b = 0x0;

	if (FUNC5(rtwdev))
		return;

	/* not able to restore, do it */

	FUNC1(rtwdev, backup, backup_rf);

	FUNC2(rtwdev);

	/* path-A */
	FUNC3(rtwdev, RF_PATH_A, &adc_ic_a, &adc_qc_a);
	for (i = 0; i < 10; i++) {
		FUNC6(rtwdev, RF_PATH_A);
		FUNC7(rtwdev, RF_PATH_A, &ic, &qc);
		ic_a = ic;
		qc_a = qc;

		FUNC8(rtwdev, RF_PATH_A, adc_ic_a, adc_qc_a,
				       &ic, &qc, &i_a, &q_a);

		if (ic < 5 && qc < 5)
			break;
	}
	FUNC9(rtwdev, RF_PATH_A);

	/* path-B */
	FUNC3(rtwdev, RF_PATH_B, &adc_ic_b, &adc_qc_b);
	for (i = 0; i < 10; i++) {
		FUNC6(rtwdev, RF_PATH_B);
		FUNC7(rtwdev, RF_PATH_B, &ic, &qc);
		ic_b = ic;
		qc_b = qc;

		FUNC8(rtwdev, RF_PATH_B, adc_ic_b, adc_qc_b,
				       &ic, &qc, &i_b, &q_b);

		if (ic < 5 && qc < 5)
			break;
	}
	FUNC9(rtwdev, RF_PATH_B);

	FUNC12(rtwdev, 0x1b00, 0x00000008);
	FUNC13(rtwdev, 0x4130, FUNC0(30), 0x1);
	FUNC14(rtwdev, 0x1bcc, 0x0);
	FUNC12(rtwdev, 0x1b00, 0x0000000a);
	FUNC14(rtwdev, 0x1bcc, 0x0);

	FUNC10(rtwdev, backup, backup_rf);

	/* backup results to restore, saving a lot of time */
	FUNC4(rtwdev);

	FUNC11(rtwdev, RTW_DBG_RFK, "[DACK] path A: ic=0x%x, qc=0x%x\n", ic_a, qc_a);
	FUNC11(rtwdev, RTW_DBG_RFK, "[DACK] path B: ic=0x%x, qc=0x%x\n", ic_b, qc_b);
	FUNC11(rtwdev, RTW_DBG_RFK, "[DACK] path A: i=0x%x, q=0x%x\n", i_a, q_a);
	FUNC11(rtwdev, RTW_DBG_RFK, "[DACK] path B: i=0x%x, q=0x%x\n", i_b, q_b);
}