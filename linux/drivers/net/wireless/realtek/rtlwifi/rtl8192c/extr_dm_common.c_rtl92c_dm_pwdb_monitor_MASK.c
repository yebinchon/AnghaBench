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
struct TYPE_2__ {long entry_max_undec_sm_pwdb; long entry_min_undec_sm_pwdb; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAC80211_LINKED ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 struct rtl_mac* FUNC0 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_mac *mac = FUNC0(FUNC1(hw));
	long tmpentry_max_pwdb = 0, tmpentry_min_pwdb = 0xff;

	if (mac->link_state != MAC80211_LINKED)
		return;

	if (mac->opmode == NL80211_IFTYPE_ADHOC ||
	    mac->opmode == NL80211_IFTYPE_AP) {
		/* TODO: Handle ADHOC and AP Mode */
	}

	if (tmpentry_max_pwdb != 0)
		rtlpriv->dm.entry_max_undec_sm_pwdb = tmpentry_max_pwdb;
	else
		rtlpriv->dm.entry_max_undec_sm_pwdb = 0;

	if (tmpentry_min_pwdb != 0xff)
		rtlpriv->dm.entry_min_undec_sm_pwdb = tmpentry_min_pwdb;
	else
		rtlpriv->dm.entry_min_undec_sm_pwdb = 0;

/* TODO:
 *	if (mac->opmode == NL80211_IFTYPE_STATION) {
 *		if (rtlpriv->rtlhal.fw_ready) {
 *			u32 param = (u32)(rtlpriv->dm.undec_sm_pwdb << 16);
 *			rtl8192c_set_rssi_cmd(hw, param);
 *		}
 *	}
 */
}