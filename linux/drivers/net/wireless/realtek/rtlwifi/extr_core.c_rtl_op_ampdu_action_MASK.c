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
typedef  int /*<<< orphan*/  u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_ampdu_params {int action; int /*<<< orphan*/  ssn; int /*<<< orphan*/  tid; struct ieee80211_sta* sta; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_MAC80211 ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int EOPNOTSUPP ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct ieee80211_hw*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_hw*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
			       struct ieee80211_vif *vif,
			       struct ieee80211_ampdu_params *params)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct ieee80211_sta *sta = params->sta;
	enum ieee80211_ampdu_mlme_action action = params->action;
	u16 tid = params->tid;
	u16 *ssn = &params->ssn;

	switch (action) {
	case IEEE80211_AMPDU_TX_START:
		FUNC0(rtlpriv, COMP_MAC80211, DBG_TRACE,
			 "IEEE80211_AMPDU_TX_START: TID:%d\n", tid);
		return FUNC6(hw, vif, sta, tid, ssn);
	case IEEE80211_AMPDU_TX_STOP_CONT:
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		FUNC0(rtlpriv, COMP_MAC80211, DBG_TRACE,
			 "IEEE80211_AMPDU_TX_STOP: TID:%d\n", tid);
		return FUNC7(hw, vif, sta, tid);
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		FUNC0(rtlpriv, COMP_MAC80211, DBG_TRACE,
			 "IEEE80211_AMPDU_TX_OPERATIONAL:TID:%d\n", tid);
		FUNC5(hw, sta, tid);
		break;
	case IEEE80211_AMPDU_RX_START:
		FUNC0(rtlpriv, COMP_MAC80211, DBG_TRACE,
			 "IEEE80211_AMPDU_RX_START:TID:%d\n", tid);
		return FUNC3(hw, sta, tid);
	case IEEE80211_AMPDU_RX_STOP:
		FUNC0(rtlpriv, COMP_MAC80211, DBG_TRACE,
			 "IEEE80211_AMPDU_RX_STOP:TID:%d\n", tid);
		return FUNC4(hw, sta, tid);
	default:
		FUNC1("IEEE80211_AMPDU_ERR!!!!:\n");
		return -EOPNOTSUPP;
	}
	return 0;
}