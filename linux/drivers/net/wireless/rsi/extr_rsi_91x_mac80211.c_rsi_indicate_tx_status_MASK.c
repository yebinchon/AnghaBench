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
struct skb_info {int /*<<< orphan*/  internal_hdr_size; } ;
struct sk_buff {int dummy; } ;
struct rsi_hw {int /*<<< orphan*/  hw; } ;
struct ieee80211_tx_info {scalar_t__ driver_data; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ZONE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_INFO_DRIVER_DATA_SIZE ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC5(struct rsi_hw *adapter,
			    struct sk_buff *skb,
			    int status)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct skb_info *tx_params;

	if (!adapter->hw) {
		FUNC3(ERR_ZONE, "##### No MAC #####\n");
		return;
	}

	if (!status)
		info->flags |= IEEE80211_TX_STAT_ACK;

	tx_params = (struct skb_info *)info->driver_data;
	FUNC4(skb, tx_params->internal_hdr_size);
	FUNC2(info->driver_data, 0, IEEE80211_TX_INFO_DRIVER_DATA_SIZE);

	FUNC1(adapter->hw, skb);
}