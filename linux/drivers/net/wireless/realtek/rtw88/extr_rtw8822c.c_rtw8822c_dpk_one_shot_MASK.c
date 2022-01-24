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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BIT_IQ_SWITCH ; 
 int BIT_RPT_SEL ; 
 int BIT_SUBPAGE ; 
 int /*<<< orphan*/  REG_DPD_CTL0 ; 
 int /*<<< orphan*/  REG_NCTL0 ; 
 int /*<<< orphan*/  REG_RXSRAM_CTL ; 
 int /*<<< orphan*/  REG_R_CONFIG ; 
 int REG_STAT_RPT ; 
 int /*<<< orphan*/  RTW_DBG_RFK ; 
 scalar_t__ RTW_DPK_CAL_PWR ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct rtw_dev*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*,int,int) ; 

__attribute__((used)) static u8 FUNC9(struct rtw_dev *rtwdev, u8 path, u8 action)
{
	u16 dpk_cmd;
	u8 result = 0;

	FUNC4(rtwdev, true);

	if (action == RTW_DPK_CAL_PWR) {
		FUNC7(rtwdev, REG_DPD_CTL0, FUNC0(12), 0x1);
		FUNC7(rtwdev, REG_DPD_CTL0, FUNC0(12), 0x0);
		FUNC7(rtwdev, REG_RXSRAM_CTL, BIT_RPT_SEL, 0x0);
		FUNC2(10);
		if (!FUNC1(rtwdev, REG_STAT_RPT, FUNC0(31), 0x1)) {
			result = 1;
			FUNC5(rtwdev, RTW_DBG_RFK, "[DPK] one-shot over 20ms\n");
		}
	} else {
		FUNC7(rtwdev, REG_NCTL0, BIT_SUBPAGE,
				 0x8 | (path << 1));
		FUNC7(rtwdev, REG_R_CONFIG, BIT_IQ_SWITCH, 0x9);

		dpk_cmd = FUNC3(rtwdev, action, path);
		FUNC6(rtwdev, REG_NCTL0, dpk_cmd);
		FUNC6(rtwdev, REG_NCTL0, dpk_cmd + 1);
		FUNC2(10);
		if (!FUNC1(rtwdev, 0x2d9c, 0xff, 0x55)) {
			result = 1;
			FUNC5(rtwdev, RTW_DBG_RFK, "[DPK] one-shot over 20ms\n");
		}
		FUNC7(rtwdev, REG_NCTL0, BIT_SUBPAGE,
				 0x8 | (path << 1));
		FUNC7(rtwdev, REG_R_CONFIG, BIT_IQ_SWITCH, 0x0);
	}

	FUNC4(rtwdev, false);

	FUNC8(rtwdev, 0x1b10, 0x0);

	return result;
}