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
struct wiphy {int /*<<< orphan*/  interface_modes; int /*<<< orphan*/  features; } ;
struct mt76_vif {int dummy; } ;
struct mt76_sta {int dummy; } ;
struct mt7601u_dev {int* wcid_mask; int /*<<< orphan*/  stat_work; int /*<<< orphan*/  mac_work; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  dev; TYPE_1__* mon_wcid; struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int queues; int max_rates; int max_report_rates; int max_rate_tries; int sta_data_size; int vif_data_size; struct wiphy* wiphy; } ;
struct TYPE_2__ {int idx; int hw_key_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMPDU_AGGREGATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MFP_CAPABLE ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CQM_RSSI_LIST ; 
 int /*<<< orphan*/  NL80211_FEATURE_ACTIVE_MONITOR ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  PS_NULLFUNC_STACK ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  SUPPORTS_HT_CCK_RATES ; 
 int /*<<< orphan*/  SUPPORTS_RC_TABLE ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  mt7601u_mac_work ; 
 int /*<<< orphan*/  mt7601u_tx_stat ; 
 int FUNC8 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct wiphy*,int /*<<< orphan*/ ) ; 

int FUNC10(struct mt7601u_dev *dev)
{
	struct ieee80211_hw *hw = dev->hw;
	struct wiphy *wiphy = hw->wiphy;
	int ret;

	/* Reserve WCID 0 for mcast - thanks to this APs WCID will go to
	 * entry no. 1 like it does in the vendor driver.
	 */
	dev->wcid_mask[0] |= 1;

	/* init fake wcid for monitor interfaces */
	dev->mon_wcid = FUNC4(dev->dev, sizeof(*dev->mon_wcid),
				     GFP_KERNEL);
	if (!dev->mon_wcid)
		return -ENOMEM;
	dev->mon_wcid->idx = 0xff;
	dev->mon_wcid->hw_key_idx = -1;

	FUNC2(hw, dev->dev);

	hw->queues = 4;
	FUNC5(hw, SIGNAL_DBM);
	FUNC5(hw, PS_NULLFUNC_STACK);
	FUNC5(hw, SUPPORTS_HT_CCK_RATES);
	FUNC5(hw, AMPDU_AGGREGATION);
	FUNC5(hw, SUPPORTS_RC_TABLE);
	FUNC5(hw, MFP_CAPABLE);
	hw->max_rates = 1;
	hw->max_report_rates = 7;
	hw->max_rate_tries = 1;

	hw->sta_data_size = sizeof(struct mt76_sta);
	hw->vif_data_size = sizeof(struct mt76_vif);

	FUNC3(hw, dev->macaddr);

	wiphy->features |= NL80211_FEATURE_ACTIVE_MONITOR;
	wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION);

	FUNC9(wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

	ret = FUNC8(dev);
	if (ret)
		return ret;

	FUNC1(&dev->mac_work, mt7601u_mac_work);
	FUNC1(&dev->stat_work, mt7601u_tx_stat);

	ret = FUNC6(hw);
	if (ret)
		return ret;

	FUNC7(dev);

	return 0;
}