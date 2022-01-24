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
typedef  int u8 ;
typedef  int u32 ;
struct rtw_dm_info {int* dack_adck; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RFREG_MASK ; 
#define  RF_PATH_A 129 
#define  RF_PATH_B 128 
 int /*<<< orphan*/  RTW_DBG_RFK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int*,int*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int const,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct rtw_dev *rtwdev,
				 u8 path, u32 *adc_ic, u32 *adc_qc)
{
	struct rtw_dm_info *dm_info = &rtwdev->dm_info;
	u32 ic = 0, qc = 0, temp = 0;
	u32 base_addr;
	u32 path_sel;
	int i;

	FUNC4(rtwdev, RTW_DBG_RFK, "[DACK] ADCK path(%d)\n", path);

	base_addr = FUNC3(path);
	switch (path) {
	case RF_PATH_A:
		path_sel = 0xa0000;
		break;
	case RF_PATH_B:
		path_sel = 0x80000;
		break;
	default:
		FUNC1(1);
		return;
	}

	/* ADCK step1 */
	FUNC6(rtwdev, base_addr + 0x30, FUNC0(30), 0x0);
	if (path == RF_PATH_B)
		FUNC5(rtwdev, base_addr + 0x30, 0x30db8041);
	FUNC5(rtwdev, base_addr + 0x60, 0xf0040ff0);
	FUNC5(rtwdev, base_addr + 0x0c, 0xdff00220);
	FUNC5(rtwdev, base_addr + 0x10, 0x02dd08c4);
	FUNC5(rtwdev, base_addr + 0x0c, 0x10000260);
	FUNC7(rtwdev, RF_PATH_A, 0x0, RFREG_MASK, 0x10000);
	FUNC7(rtwdev, RF_PATH_B, 0x0, RFREG_MASK, 0x10000);
	for (i = 0; i < 10; i++) {
		FUNC4(rtwdev, RTW_DBG_RFK, "[DACK] ADCK count=%d\n", i);
		FUNC5(rtwdev, 0x1c3c, path_sel + 0x8003);
		FUNC5(rtwdev, 0x1c24, 0x00010002);
		FUNC2(rtwdev, &ic, &qc);
		FUNC4(rtwdev, RTW_DBG_RFK,
			"[DACK] before: i=0x%x, q=0x%x\n", ic, qc);

		/* compensation value */
		if (ic != 0x0) {
			ic = 0x400 - ic;
			*adc_ic = ic;
		}
		if (qc != 0x0) {
			qc = 0x400 - qc;
			*adc_qc = qc;
		}
		temp = (ic & 0x3ff) | ((qc & 0x3ff) << 10);
		FUNC5(rtwdev, base_addr + 0x68, temp);
		dm_info->dack_adck[path] = temp;
		FUNC4(rtwdev, RTW_DBG_RFK, "[DACK] ADCK 0x%08x=0x08%x\n",
			base_addr + 0x68, temp);
		/* check ADC DC offset */
		FUNC5(rtwdev, 0x1c3c, path_sel + 0x8103);
		FUNC2(rtwdev, &ic, &qc);
		FUNC4(rtwdev, RTW_DBG_RFK,
			"[DACK] after:  i=0x%08x, q=0x%08x\n", ic, qc);
		if (ic >= 0x200)
			ic = 0x400 - ic;
		if (qc >= 0x200)
			qc = 0x400 - qc;
		if (ic < 5 && qc < 5)
			break;
	}

	/* ADCK step2 */
	FUNC5(rtwdev, 0x1c3c, 0x00000003);
	FUNC5(rtwdev, base_addr + 0x0c, 0x10000260);
	FUNC5(rtwdev, base_addr + 0x10, 0x02d508c4);

	/* release pull low switch on IQ path */
	FUNC7(rtwdev, path, 0x8f, FUNC0(13), 0x1);
}