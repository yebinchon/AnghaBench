#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rt2x00_sta {int wcid; } ;
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int /*<<< orphan*/  sta_ids; int /*<<< orphan*/ ** wcid_to_sta; int /*<<< orphan*/ * ampdu_factor_cnt; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ampdu_factor; scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int WCID_END ; 
 int WCID_START ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 struct rt2x00_sta* FUNC3 (struct ieee80211_sta*) ; 

int FUNC4(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		      struct ieee80211_sta *sta)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	struct rt2x00_sta *sta_priv = FUNC3(sta);
	int wcid = sta_priv->wcid;

	if (sta->ht_cap.ht_supported) {
		drv_data->ampdu_factor_cnt[sta->ht_cap.ampdu_factor & 3]--;
		FUNC2(rt2x00dev);
	}

	if (wcid > WCID_END)
		return 0;
	/*
	 * Remove WCID entry, no need to clean the attributes as they will
	 * get renewed when the WCID is reused.
	 */
	FUNC1(rt2x00dev, NULL, wcid);
	drv_data->wcid_to_sta[wcid - WCID_START] = NULL;
	FUNC0(wcid - WCID_START, drv_data->sta_ids);

	return 0;
}