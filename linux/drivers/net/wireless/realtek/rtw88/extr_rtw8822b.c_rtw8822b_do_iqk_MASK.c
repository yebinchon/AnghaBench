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
struct rtw_iqk_para {int /*<<< orphan*/  segment_iqk; int /*<<< orphan*/  clear; } ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_IQKFAILMSK ; 
 int /*<<< orphan*/  RFREG_MASK ; 
 int /*<<< orphan*/  RF_DTXLOK ; 
 int /*<<< orphan*/  RF_PATH_A ; 
 int /*<<< orphan*/  RTW_DBG_PHY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,struct rtw_iqk_para*) ; 
 int FUNC5 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct rtw_dev *rtwdev)
{
	static int do_iqk_cnt;
	struct rtw_iqk_para para = {.clear = 0, .segment_iqk = 0};
	u32 rf_reg, iqk_fail_mask;
	int counter;
	bool reload;

	FUNC4(rtwdev, &para);

	for (counter = 0; counter < 300; counter++) {
		rf_reg = FUNC6(rtwdev, RF_PATH_A, RF_DTXLOK, RFREG_MASK);
		if (rf_reg == 0xabcde)
			break;
		FUNC2(20);
	}
	FUNC7(rtwdev, RF_PATH_A, RF_DTXLOK, RFREG_MASK, 0x0);

	reload = !!FUNC5(rtwdev, REG_IQKFAILMSK, FUNC0(16));
	iqk_fail_mask = FUNC5(rtwdev, REG_IQKFAILMSK, FUNC1(7, 0));
	FUNC3(rtwdev, RTW_DBG_PHY,
		"iqk counter=%d reload=%d do_iqk_cnt=%d n_iqk_fail(mask)=0x%02x\n",
		counter, reload, ++do_iqk_cnt, iqk_fail_mask);
}