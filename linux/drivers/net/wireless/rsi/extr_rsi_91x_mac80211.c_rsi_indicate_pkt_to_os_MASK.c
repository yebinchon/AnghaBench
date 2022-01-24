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
struct sk_buff {int dummy; } ;
struct rsi_hw {int /*<<< orphan*/  sc_nvifs; struct ieee80211_hw* hw; } ;
struct rsi_common {scalar_t__ iface_down; struct rsi_hw* priv; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*,struct rsi_common*,struct ieee80211_rx_status*) ; 

void FUNC4(struct rsi_common *common,
			    struct sk_buff *skb)
{
	struct rsi_hw *adapter = common->priv;
	struct ieee80211_hw *hw = adapter->hw;
	struct ieee80211_rx_status *rx_status = FUNC0(skb);

	if ((common->iface_down) || (!adapter->sc_nvifs)) {
		FUNC1(skb);
		return;
	}

	/* filling in the ieee80211_rx_status flags */
	FUNC3(hw, skb, common, rx_status);

	FUNC2(hw, skb);
}