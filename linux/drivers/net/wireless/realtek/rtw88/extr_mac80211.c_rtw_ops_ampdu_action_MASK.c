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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_ampdu_params {int action; int /*<<< orphan*/  tid; struct ieee80211_sta* sta; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif,
				struct ieee80211_ampdu_params *params)
{
	struct ieee80211_sta *sta = params->sta;
	u16 tid = params->tid;

	switch (params->action) {
	case IEEE80211_AMPDU_TX_START:
		FUNC1(vif, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		FUNC2(vif, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
	case IEEE80211_AMPDU_RX_START:
	case IEEE80211_AMPDU_RX_STOP:
		break;
	default:
		FUNC0(1);
		return -ENOTSUPP;
	}

	return 0;
}