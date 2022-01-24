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
struct rtw_iqk_para {int clear; int /*<<< orphan*/  member_0; } ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_IQKSTAT ; 
 int /*<<< orphan*/  REG_RPT_CIP ; 
 int /*<<< orphan*/  RTW_DBG_RFK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,struct rtw_iqk_para*) ; 
 int FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct rtw_dev *rtwdev)
{
	struct rtw_iqk_para para = {0};
	u8 iqk_chk;
	int counter;

	para.clear = 1;
	FUNC2(rtwdev, &para);

	for (counter = 0; counter < 300; counter++) {
		iqk_chk = FUNC3(rtwdev, REG_RPT_CIP);
		if (iqk_chk == 0xaa)
			break;
		FUNC0(20);
	}
	FUNC4(rtwdev, REG_IQKSTAT, 0x0);

	FUNC1(rtwdev, RTW_DBG_RFK, "iqk counter=%d\n", counter);
}