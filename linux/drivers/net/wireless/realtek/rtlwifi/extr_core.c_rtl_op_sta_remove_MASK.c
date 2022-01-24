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
struct rtl_sta_info {int /*<<< orphan*/  list; scalar_t__ ratr_index; scalar_t__ wireless_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry_list_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_MAC80211 ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif,
				struct ieee80211_sta *sta)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_sta_info *sta_entry;

	if (sta) {
		FUNC0(rtlpriv, COMP_MAC80211, DBG_DMESG,
			 "Remove sta addr is %pM\n", sta->addr);
		sta_entry = (struct rtl_sta_info *)sta->drv_priv;
		sta_entry->wireless_mode = 0;
		sta_entry->ratr_index = 0;
		FUNC3(&rtlpriv->locks.entry_list_lock);
		FUNC1(&sta_entry->list);
		FUNC4(&rtlpriv->locks.entry_list_lock);
	}
	return 0;
}