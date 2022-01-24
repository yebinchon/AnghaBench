#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int undec_sm_pwdb; int /*<<< orphan*/  useramask; } ;
struct rate_adaptive {int ldpc_thres; int use_ldpc; int lower_rts_rate; int /*<<< orphan*/  ratr_state; int /*<<< orphan*/  pre_ratr_state; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ dm; struct rate_adaptive ra; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; int /*<<< orphan*/  bssid; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* update_rate_tbl ) (struct ieee80211_hw*,struct ieee80211_sta*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RATE ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ MAC80211_LINKED ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct ieee80211_sta* FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC6 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC7 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,struct ieee80211_sta*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC8(hw);
	struct rtl_hal *rtlhal = FUNC6(FUNC8(hw));
	struct rtl_mac *mac = FUNC7(FUNC8(hw));
	struct rate_adaptive *p_ra = &rtlpriv->ra;
	struct ieee80211_sta *sta = NULL;

	if (FUNC2(rtlhal)) {
		FUNC0(rtlpriv, COMP_RATE, DBG_LOUD,
			 "driver is going to unload\n");
		return;
	}

	if (!rtlpriv->dm.useramask) {
		FUNC0(rtlpriv, COMP_RATE, DBG_LOUD,
			 "driver does not control rate adaptive mask\n");
		return;
	}

	if (mac->link_state == MAC80211_LINKED &&
	    mac->opmode == NL80211_IFTYPE_STATION) {
		if (rtlpriv->dm.undec_sm_pwdb < p_ra->ldpc_thres) {
			p_ra->use_ldpc = true;
			p_ra->lower_rts_rate = true;
		} else if (rtlpriv->dm.undec_sm_pwdb >
			   (p_ra->ldpc_thres - 5)) {
			p_ra->use_ldpc = false;
			p_ra->lower_rts_rate = false;
		}
		if (FUNC1(hw, rtlpriv->dm.undec_sm_pwdb,
					       &p_ra->ratr_state)) {
			FUNC3();
			sta = FUNC5(hw, mac->bssid);
			if (sta)
				rtlpriv->cfg->ops->update_rate_tbl(hw, sta,
							      p_ra->ratr_state,
							      true);
			FUNC4();

			p_ra->pre_ratr_state = p_ra->ratr_state;
		}
	}
}