#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int current_channel; int rcr; int /*<<< orphan*/  tx_power_mutex; } ;
struct TYPE_8__ {int total_cam_num; } ;
struct rtw_coex {int /*<<< orphan*/  wait; int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; int /*<<< orphan*/  defreeze_work; int /*<<< orphan*/  bt_reenable_work; int /*<<< orphan*/  bt_relink_work; } ;
struct TYPE_7__ {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  purge_timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct rtw_dev {TYPE_5__* chip; TYPE_4__ hal; int /*<<< orphan*/  mutex; int /*<<< orphan*/  mac_id_map; TYPE_3__ sec; struct rtw_coex coex; TYPE_2__ tx_report; TYPE_1__ h2c; int /*<<< orphan*/  rf_lock; int /*<<< orphan*/  dm_lock; int /*<<< orphan*/  c2h_queue; int /*<<< orphan*/  c2h_work; int /*<<< orphan*/  lps_work; int /*<<< orphan*/  watch_dog_work; int /*<<< orphan*/  rsvd_page_list; } ;
struct TYPE_10__ {int /*<<< orphan*/  fw_name; } ;

/* Variables and functions */
 int BIT_AB ; 
 int BIT_AM ; 
 int BIT_APM ; 
 int BIT_APP_FCS ; 
 int BIT_APP_ICV ; 
 int BIT_APP_MIC ; 
 int BIT_APP_PHYSTS ; 
 int BIT_HTC_LOC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSVD_BEACON ; 
 int /*<<< orphan*/  RTW_BC_MC_MACID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtw_c2h_work ; 
 int /*<<< orphan*/  rtw_coex_bt_reenable_work ; 
 int /*<<< orphan*/  rtw_coex_bt_relink_work ; 
 int /*<<< orphan*/  rtw_coex_defreeze_work ; 
 int FUNC8 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtw_lps_work ; 
 int /*<<< orphan*/  rtw_tx_report_purge_timer ; 
 int /*<<< orphan*/  FUNC9 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  rtw_watch_dog_work ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct rtw_dev *rtwdev)
{
	struct rtw_coex *coex = &rtwdev->coex;
	int ret;

	FUNC1(&rtwdev->rsvd_page_list);

	FUNC13(&rtwdev->tx_report.purge_timer,
		    rtw_tx_report_purge_timer, 0);

	FUNC0(&rtwdev->watch_dog_work, rtw_watch_dog_work);
	FUNC0(&rtwdev->lps_work, rtw_lps_work);
	FUNC0(&coex->bt_relink_work, rtw_coex_bt_relink_work);
	FUNC0(&coex->bt_reenable_work, rtw_coex_bt_reenable_work);
	FUNC0(&coex->defreeze_work, rtw_coex_defreeze_work);
	FUNC2(&rtwdev->c2h_work, rtw_c2h_work);
	FUNC11(&rtwdev->c2h_queue);
	FUNC11(&rtwdev->coex.queue);
	FUNC11(&rtwdev->tx_report.queue);

	FUNC12(&rtwdev->dm_lock);
	FUNC12(&rtwdev->rf_lock);
	FUNC12(&rtwdev->h2c.lock);
	FUNC12(&rtwdev->tx_report.q_lock);

	FUNC4(&rtwdev->mutex);
	FUNC4(&rtwdev->coex.mutex);
	FUNC4(&rtwdev->hal.tx_power_mutex);

	FUNC3(&rtwdev->coex.wait);

	rtwdev->sec.total_cam_num = 32;
	rtwdev->hal.current_channel = 1;
	FUNC10(RTW_BC_MC_MACID, rtwdev->mac_id_map);

	FUNC5(&rtwdev->mutex);
	FUNC7(rtwdev, RSVD_BEACON, false);
	FUNC6(&rtwdev->mutex);

	/* default rx filter setting */
	rtwdev->hal.rcr = BIT_APP_FCS | BIT_APP_MIC | BIT_APP_ICV |
			  BIT_HTC_LOC_CTRL | BIT_APP_PHYSTS |
			  BIT_AB | BIT_AM | BIT_APM;

	ret = FUNC8(rtwdev, rtwdev->chip->fw_name);
	if (ret) {
		FUNC9(rtwdev, "no firmware loaded\n");
		return ret;
	}

	return 0;
}