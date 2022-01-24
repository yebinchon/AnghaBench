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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct rtl_efuse {int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  smps_control; int /*<<< orphan*/  action; } ;
struct TYPE_6__ {TYPE_1__ ht_smps; } ;
struct TYPE_7__ {TYPE_2__ u; int /*<<< orphan*/  category; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; int /*<<< orphan*/  frame_control; int /*<<< orphan*/  bssid; int /*<<< orphan*/  sa; int /*<<< orphan*/  da; } ;
struct ieee80211_hw {int /*<<< orphan*/  extra_tx_headroom; } ;
typedef  enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_FTYPE_MGMT ; 
#define  IEEE80211_SMPS_AUTOMATIC 132 
#define  IEEE80211_SMPS_DYNAMIC 131 
#define  IEEE80211_SMPS_NUM_MODES 130 
#define  IEEE80211_SMPS_OFF 129 
#define  IEEE80211_SMPS_STATIC 128 
 int IEEE80211_STYPE_ACTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_CATEGORY_HT ; 
 int /*<<< orphan*/  WLAN_HT_ACTION_SMPS ; 
 int /*<<< orphan*/  WLAN_HT_SMPS_CONTROL_DISABLED ; 
 int /*<<< orphan*/  WLAN_HT_SMPS_CONTROL_DYNAMIC ; 
 int /*<<< orphan*/  WLAN_HT_SMPS_CONTROL_STATIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct ieee80211_mgmt* FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct ieee80211_hw *hw,
				     enum ieee80211_smps_mode smps,
				     u8 *da, u8 *bssid)
{
	struct rtl_efuse *rtlefuse = FUNC4(FUNC5(hw));
	struct sk_buff *skb;
	struct ieee80211_mgmt *action_frame;

	/* 27 = header + category + action + smps mode */
	skb = FUNC2(27 + hw->extra_tx_headroom);
	if (!skb)
		return NULL;

	FUNC7(skb, hw->extra_tx_headroom);
	action_frame = FUNC6(skb, 27);
	FUNC3(action_frame->da, da, ETH_ALEN);
	FUNC3(action_frame->sa, rtlefuse->dev_addr, ETH_ALEN);
	FUNC3(action_frame->bssid, bssid, ETH_ALEN);
	action_frame->frame_control = FUNC1(IEEE80211_FTYPE_MGMT |
						  IEEE80211_STYPE_ACTION);
	action_frame->u.action.category = WLAN_CATEGORY_HT;
	action_frame->u.action.u.ht_smps.action = WLAN_HT_ACTION_SMPS;
	switch (smps) {
	case IEEE80211_SMPS_AUTOMATIC:/* 0 */
	case IEEE80211_SMPS_NUM_MODES:/* 4 */
		FUNC0(1);
	/* fall through */
	case IEEE80211_SMPS_OFF:/* 1 */ /*MIMO_PS_NOLIMIT*/
		action_frame->u.action.u.ht_smps.smps_control =
				WLAN_HT_SMPS_CONTROL_DISABLED;/* 0 */
		break;
	case IEEE80211_SMPS_STATIC:/* 2 */ /*MIMO_PS_STATIC*/
		action_frame->u.action.u.ht_smps.smps_control =
				WLAN_HT_SMPS_CONTROL_STATIC;/* 1 */
		break;
	case IEEE80211_SMPS_DYNAMIC:/* 3 */ /*MIMO_PS_DYNAMIC*/
		action_frame->u.action.u.ht_smps.smps_control =
				WLAN_HT_SMPS_CONTROL_DYNAMIC;/* 3 */
		break;
	}

	return skb;
}