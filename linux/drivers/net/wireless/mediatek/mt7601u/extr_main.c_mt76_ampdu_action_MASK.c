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
typedef  size_t u16 ;
struct TYPE_2__ {scalar_t__ idx; } ;
struct mt76_sta {size_t* agg_ssn; TYPE_1__ wcid; } ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; struct ieee80211_sta* sta; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		  struct ieee80211_ampdu_params *params)
{
	struct mt7601u_dev *dev = hw->priv;
	struct ieee80211_sta *sta = params->sta;
	enum ieee80211_ampdu_mlme_action action = params->action;
	u16 tid = params->tid;
	u16 ssn = params->ssn;
	struct mt76_sta *msta = (struct mt76_sta *) sta->drv_priv;

	FUNC3(msta->wcid.idx > FUNC1(0));

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		FUNC8(dev, FUNC2(msta->wcid.idx) + 4, FUNC0(16 + tid));
		break;
	case IEEE80211_AMPDU_RX_STOP:
		FUNC7(dev, FUNC2(msta->wcid.idx) + 4,
			   FUNC0(16 + tid));
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		FUNC4(vif, sta->addr, tid, msta->agg_ssn[tid]);
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		break;
	case IEEE80211_AMPDU_TX_START:
		msta->agg_ssn[tid] = ssn << 4;
		FUNC5(vif, sta->addr, tid);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
		FUNC6(vif, sta->addr, tid);
		break;
	}

	return 0;
}