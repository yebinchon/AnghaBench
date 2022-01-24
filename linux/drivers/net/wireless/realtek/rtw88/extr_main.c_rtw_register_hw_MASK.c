#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rtw_vif {int dummy; } ;
struct rtw_sta_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  alpha2; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct rtw_dev {TYPE_2__ regd; TYPE_1__ efuse; TYPE_3__* chip; } ;
struct ieee80211_hw {int extra_tx_headroom; int sta_data_size; int vif_data_size; TYPE_4__* wiphy; int /*<<< orphan*/  queues; } ;
struct TYPE_8__ {int interface_modes; int flags; int /*<<< orphan*/  features; } ;
struct TYPE_7__ {int tx_pkt_desc_sz; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMPDU_AGGREGATION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  MFP_CAPABLE ; 
 int /*<<< orphan*/  NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  RX_INCLUDES_FCS ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  SUPPORTS_AMSDU_IN_AMPDU ; 
 int /*<<< orphan*/  SUPPORTS_DYNAMIC_PS ; 
 int /*<<< orphan*/  SUPPORTS_PS ; 
 int /*<<< orphan*/  SUPPORT_FAST_XMIT ; 
 int WIPHY_FLAG_SUPPORTS_TDLS ; 
 int WIPHY_FLAG_TDLS_EXTERNAL_SETUP ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtw_regd_notifier ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,TYPE_3__*) ; 

int FUNC9(struct rtw_dev *rtwdev, struct ieee80211_hw *hw)
{
	int max_tx_headroom = 0;
	int ret;

	/* TODO: USB & SDIO may need extra room? */
	max_tx_headroom = rtwdev->chip->tx_pkt_desc_sz;

	hw->extra_tx_headroom = max_tx_headroom;
	hw->queues = IEEE80211_NUM_ACS;
	hw->sta_data_size = sizeof(struct rtw_sta_info);
	hw->vif_data_size = sizeof(struct rtw_vif);

	FUNC2(hw, SIGNAL_DBM);
	FUNC2(hw, RX_INCLUDES_FCS);
	FUNC2(hw, AMPDU_AGGREGATION);
	FUNC2(hw, MFP_CAPABLE);
	FUNC2(hw, REPORTS_TX_ACK_STATUS);
	FUNC2(hw, SUPPORTS_PS);
	FUNC2(hw, SUPPORTS_DYNAMIC_PS);
	FUNC2(hw, SUPPORT_FAST_XMIT);
	FUNC2(hw, SUPPORTS_AMSDU_IN_AMPDU);

	hw->wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION) |
				     FUNC0(NL80211_IFTYPE_AP) |
				     FUNC0(NL80211_IFTYPE_ADHOC) |
				     FUNC0(NL80211_IFTYPE_MESH_POINT);

	hw->wiphy->flags |= WIPHY_FLAG_SUPPORTS_TDLS |
			    WIPHY_FLAG_TDLS_EXTERNAL_SETUP;

	hw->wiphy->features |= NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR;

	FUNC8(hw, rtwdev->chip);
	FUNC1(hw, rtwdev->efuse.addr);

	FUNC7(rtwdev, rtw_regd_notifier);

	ret = FUNC3(hw);
	if (ret) {
		FUNC6(rtwdev, "failed to register hw\n");
		return ret;
	}

	if (FUNC4(hw->wiphy, rtwdev->regd.alpha2))
		FUNC6(rtwdev, "regulatory_hint fail\n");

	FUNC5(rtwdev);

	return 0;
}