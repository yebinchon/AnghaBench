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
typedef  int /*<<< orphan*/  u8 ;
struct rtw_coex_stat {scalar_t__ wl_connected; scalar_t__ wl_linkscan_proc; scalar_t__ bt_inq_page; scalar_t__ bt_setup_link; scalar_t__ bt_whck_test; int /*<<< orphan*/  wl_force_lps_ctrl; scalar_t__ wl_under_lps; scalar_t__ bt_disabled; int /*<<< orphan*/  wl_coex_mode; int /*<<< orphan*/ * cnt_wl; scalar_t__ wl_under_ips; } ;
struct rtw_coex_dm {scalar_t__ bt_status; int /*<<< orphan*/  reason; } ;
struct rtw_coex {int freerun; scalar_t__ under_5g; scalar_t__ freeze; scalar_t__ stop_dm; struct rtw_coex_stat stat; struct rtw_coex_dm dm; } ;
struct rtw_dev {int /*<<< orphan*/  mutex; struct rtw_coex coex; } ;

/* Variables and functions */
 scalar_t__ COEX_BTSTATUS_CON_IDLE ; 
 scalar_t__ COEX_BTSTATUS_NCON_IDLE ; 
 size_t COEX_CNT_WL_COEXRUN ; 
 int /*<<< orphan*/  COEX_SCBD_FIX2M ; 
 int /*<<< orphan*/  COEX_WLINK_2G1PORT ; 
 int /*<<< orphan*/  COEX_WLINK_5G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
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
 int /*<<< orphan*/  FUNC12 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(struct rtw_dev *rtwdev, u8 reason)
{
	struct rtw_coex *coex = &rtwdev->coex;
	struct rtw_coex_dm *coex_dm = &coex->dm;
	struct rtw_coex_stat *coex_stat = &coex->stat;

	FUNC0(&rtwdev->mutex);

	coex_dm->reason = reason;

	/* update wifi_link_info_ext variable */
	FUNC14(rtwdev, reason);

	FUNC12(rtwdev);

	if (coex->stop_dm)
		return;

	if (coex_stat->wl_under_ips)
		return;

	if (coex->freeze && !coex_stat->bt_setup_link)
		return;

	coex_stat->cnt_wl[COEX_CNT_WL_COEXRUN]++;
	coex->freerun = false;

	/* Pure-5G Coex Process */
	if (coex->under_5g) {
		coex_stat->wl_coex_mode = COEX_WLINK_5G;
		FUNC10(rtwdev);
		goto exit;
	}

	coex_stat->wl_coex_mode = COEX_WLINK_2G1PORT;
	FUNC15(rtwdev, COEX_SCBD_FIX2M, false);
	if (coex_stat->bt_disabled) {
		FUNC9(rtwdev);
		goto exit;
	}

	if (coex_stat->wl_under_lps && !coex_stat->wl_force_lps_ctrl) {
		FUNC7(rtwdev);
		goto exit;
	}

	if (coex_stat->bt_whck_test) {
		FUNC4(rtwdev);
		goto exit;
	}

	if (coex_stat->bt_setup_link) {
		FUNC3(rtwdev);
		goto exit;
	}

	if (coex_stat->bt_inq_page) {
		FUNC2(rtwdev);
		goto exit;
	}

	if ((coex_dm->bt_status == COEX_BTSTATUS_NCON_IDLE ||
	     coex_dm->bt_status == COEX_BTSTATUS_CON_IDLE) &&
	     coex_stat->wl_connected) {
		FUNC1(rtwdev);
		goto exit;
	}

	if (coex_stat->wl_linkscan_proc) {
		FUNC6(rtwdev);
		goto exit;
	}

	if (coex_stat->wl_connected)
		FUNC5(rtwdev);
	else
		FUNC8(rtwdev);

exit:
	FUNC13(rtwdev);
	FUNC11(rtwdev);
}