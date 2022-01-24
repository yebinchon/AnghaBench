#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct mt7601u_dev {int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  hw; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; TYPE_2__ status; } ;
struct TYPE_3__ {int idx; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mt7601u_dev *dev, struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC0(skb);

	FUNC3(skb, info);

	FUNC1(info);
	info->status.rates[0].idx = -1;
	info->flags |= IEEE80211_TX_STAT_ACK;

	FUNC4(&dev->mac_lock);
	FUNC2(dev->hw, skb);
	FUNC5(&dev->mac_lock);
}