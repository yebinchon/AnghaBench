#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  last_update; } ;
struct zd_mac {int /*<<< orphan*/  lock; TYPE_1__ beacon; int /*<<< orphan*/  hw; TYPE_2__* vif; int /*<<< orphan*/  flags; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  ZD_DEVICE_RUNNING ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct zd_mac *mac)
{
	struct sk_buff *skb, *beacon;

	if (!FUNC5(ZD_DEVICE_RUNNING, &mac->flags))
		return;
	if (!mac->vif || mac->vif->type != NL80211_IFTYPE_AP)
		return;

	/*
	 * Send out buffered broad- and multicast frames.
	 */
	while (!FUNC2(mac->hw, 0)) {
		skb = FUNC1(mac->hw, mac->vif);
		if (!skb)
			break;
		FUNC7(mac->hw, NULL, skb);
	}

	/*
	 * Fetch next beacon so that tim_count is updated.
	 */
	beacon = FUNC0(mac->hw, mac->vif);
	if (beacon)
		FUNC6(mac->hw, beacon, true);

	FUNC3(&mac->lock);
	mac->beacon.last_update = jiffies;
	FUNC4(&mac->lock);
}