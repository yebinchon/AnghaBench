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
struct rt2800_drv_data {struct ieee80211_sta** wcid_to_sta; int /*<<< orphan*/  sta_ids; int /*<<< orphan*/ * ampdu_factor_cnt; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ampdu_factor; scalar_t__ ht_supported; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; TYPE_1__ ht_cap; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  STA_IDS_SIZE ; 
 int WCID_END ; 
 int WCID_START ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,struct ieee80211_vif*) ; 
 struct rt2x00_sta* FUNC7 (struct ieee80211_sta*) ; 

int FUNC8(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		   struct ieee80211_sta *sta)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	struct rt2x00_sta *sta_priv = FUNC7(sta);
	int wcid;

	/*
	 * Limit global maximum TX AMPDU length to smallest value of all
	 * connected stations. In AP mode this can be suboptimal, but we
	 * do not have a choice if some connected STA is not capable to
	 * receive the same amount of data like the others.
	 */
	if (sta->ht_cap.ht_supported) {
		drv_data->ampdu_factor_cnt[sta->ht_cap.ampdu_factor & 3]++;
		FUNC5(rt2x00dev);
	}

	/*
	 * Search for the first free WCID entry and return the corresponding
	 * index.
	 */
	wcid = FUNC1(drv_data->sta_ids, STA_IDS_SIZE) + WCID_START;

	/*
	 * Store selected wcid even if it is invalid so that we can
	 * later decide if the STA is uploaded into the hw.
	 */
	sta_priv->wcid = wcid;

	/*
	 * No space left in the device, however, we can still communicate
	 * with the STA -> No error.
	 */
	if (wcid > WCID_END)
		return 0;

	FUNC0(wcid - WCID_START, drv_data->sta_ids);
	drv_data->wcid_to_sta[wcid - WCID_START] = sta;

	/*
	 * Clean up WCID attributes and write STA address to the device.
	 */
	FUNC4(rt2x00dev, wcid);
	FUNC2(rt2x00dev, sta->addr, wcid);
	FUNC3(rt2x00dev, wcid,
				       FUNC6(rt2x00dev, vif));
	return 0;
}