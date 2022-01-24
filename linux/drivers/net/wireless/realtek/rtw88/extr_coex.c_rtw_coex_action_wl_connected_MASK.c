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
struct rtw_efuse {int /*<<< orphan*/  share_ant; } ;
struct rtw_coex_dm {int /*<<< orphan*/ * bt_rssi_state; int /*<<< orphan*/ * wl_rssi_state; } ;
struct rtw_coex_stat {int /*<<< orphan*/  bt_a2dp_sink; scalar_t__ wl_gl_busy; } ;
struct rtw_coex {struct rtw_coex_dm dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_coex coex; } ;

/* Variables and functions */
#define  COEX_ALGO_A2DP 136 
#define  COEX_ALGO_A2DP_HID 135 
#define  COEX_ALGO_A2DP_PAN 134 
#define  COEX_ALGO_A2DP_PAN_HID 133 
#define  COEX_ALGO_HFP 132 
#define  COEX_ALGO_HID 131 
#define  COEX_ALGO_NOPROFILE 130 
#define  COEX_ALGO_PAN 129 
#define  COEX_ALGO_PAN_HID 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtw_dev*) ; 
 int FUNC12 (struct rtw_dev*) ; 

__attribute__((used)) static void FUNC13(struct rtw_dev *rtwdev)
{
	struct rtw_coex *coex = &rtwdev->coex;
	struct rtw_coex_stat *coex_stat = &coex->stat;
	struct rtw_coex_dm *coex_dm = &coex->dm;
	struct rtw_efuse *efuse = &rtwdev->efuse;
	u8 algorithm;

	/* Non-Shared-Ant */
	if (!efuse->share_ant && coex_stat->wl_gl_busy &&
	    FUNC0(coex_dm->wl_rssi_state[3]) &&
	    FUNC0(coex_dm->bt_rssi_state[0])) {
		FUNC11(rtwdev);
		return;
	}

	algorithm = FUNC12(rtwdev);

	switch (algorithm) {
	case COEX_ALGO_HFP:
		FUNC6(rtwdev);
		break;
	case COEX_ALGO_HID:
		FUNC7(rtwdev);
		break;
	case COEX_ALGO_A2DP:
		if (coex_stat->bt_a2dp_sink)
			FUNC5(rtwdev);
		else
			FUNC1(rtwdev);
		break;
	case COEX_ALGO_PAN:
		FUNC9(rtwdev);
		break;
	case COEX_ALGO_A2DP_HID:
		FUNC2(rtwdev);
		break;
	case COEX_ALGO_A2DP_PAN:
		FUNC3(rtwdev);
		break;
	case COEX_ALGO_PAN_HID:
		FUNC10(rtwdev);
		break;
	case COEX_ALGO_A2DP_PAN_HID:
		FUNC4(rtwdev);
		break;
	default:
	case COEX_ALGO_NOPROFILE:
		FUNC8(rtwdev);
		break;
	}
}