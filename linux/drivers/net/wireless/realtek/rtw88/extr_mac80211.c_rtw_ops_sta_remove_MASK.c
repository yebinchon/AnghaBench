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
struct rtw_sta_info {int /*<<< orphan*/  mac_id; } ;
struct rtw_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sta_cnt; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif,
			      struct ieee80211_sta *sta)
{
	struct rtw_dev *rtwdev = hw->priv;
	struct rtw_sta_info *si = (struct rtw_sta_info *)sta->drv_priv;

	FUNC0(&rtwdev->mutex);

	FUNC4(rtwdev, si->mac_id);
	FUNC2(rtwdev, si->mac_id, false);

	rtwdev->sta_cnt--;

	FUNC3(rtwdev, "sta %pM with macid %d left\n",
		 sta->addr, si->mac_id);

	FUNC1(&rtwdev->mutex);
	return 0;
}