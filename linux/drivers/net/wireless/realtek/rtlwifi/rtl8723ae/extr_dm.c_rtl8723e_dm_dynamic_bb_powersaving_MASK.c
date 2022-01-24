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
struct TYPE_2__ {scalar_t__ entry_min_undec_sm_pwdb; scalar_t__ undec_sm_pwdb; } ;
struct ps_t {scalar_t__ rssi_val_min; } ;
struct rtl_priv {TYPE_1__ dm; struct ps_t dm_pstable; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ MAC80211_LINKED ; 
 scalar_t__ MAC80211_NOLINK ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 struct rtl_mac* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_mac *mac = FUNC2(FUNC3(hw));
	struct ps_t *dm_pstable = &rtlpriv->dm_pstable;

	if (((mac->link_state == MAC80211_NOLINK)) &&
	    (rtlpriv->dm.entry_min_undec_sm_pwdb == 0)) {
		dm_pstable->rssi_val_min = 0;
		FUNC0(rtlpriv, DBG_LOUD, DBG_LOUD,
			 "Not connected to any\n");
	}

	if (mac->link_state == MAC80211_LINKED) {
		if (mac->opmode == NL80211_IFTYPE_ADHOC) {
			dm_pstable->rssi_val_min =
			    rtlpriv->dm.entry_min_undec_sm_pwdb;
			FUNC0(rtlpriv, DBG_LOUD, DBG_LOUD,
				 "AP Client PWDB = 0x%lx\n",
				  dm_pstable->rssi_val_min);
		} else {
			dm_pstable->rssi_val_min =
			    rtlpriv->dm.undec_sm_pwdb;
			FUNC0(rtlpriv, DBG_LOUD, DBG_LOUD,
				 "STA Default Port PWDB = 0x%lx\n",
				  dm_pstable->rssi_val_min);
		}
	} else {
		dm_pstable->rssi_val_min =
		    rtlpriv->dm.entry_min_undec_sm_pwdb;

		FUNC0(rtlpriv, DBG_LOUD, DBG_LOUD,
			 "AP Ext Port PWDB = 0x%lx\n",
			  dm_pstable->rssi_val_min);
	}

	FUNC1(hw, false);
}