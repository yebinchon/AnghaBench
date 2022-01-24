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
struct rtw_sta_info {scalar_t__ mac_id; int init_ra_lv; int /*<<< orphan*/  avg_rssi; struct ieee80211_vif* vif; struct ieee80211_sta* sta; } ;
struct rtw_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sta_cnt; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ RTW_MAX_MAC_ID_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,struct rtw_sta_info*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw,
			   struct ieee80211_vif *vif,
			   struct ieee80211_sta *sta)
{
	struct rtw_dev *rtwdev = hw->priv;
	struct rtw_sta_info *si = (struct rtw_sta_info *)sta->drv_priv;
	int ret = 0;

	FUNC1(&rtwdev->mutex);

	si->mac_id = FUNC3(rtwdev);
	if (si->mac_id >= RTW_MAX_MAC_ID_NUM) {
		ret = -ENOSPC;
		goto out;
	}

	si->sta = sta;
	si->vif = vif;
	si->init_ra_lv = 1;
	FUNC0(&si->avg_rssi);

	FUNC6(rtwdev, si);
	FUNC4(rtwdev, si->mac_id, true);

	rtwdev->sta_cnt++;

	FUNC5(rtwdev, "sta %pM joined with macid %d\n",
		 sta->addr, si->mac_id);

out:
	FUNC2(&rtwdev->mutex);
	return ret;
}