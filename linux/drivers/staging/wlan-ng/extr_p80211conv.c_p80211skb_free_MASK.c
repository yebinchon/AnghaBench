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
struct wlandevice {int /*<<< orphan*/  netdev; } ;
struct sk_buff {int dummy; } ;
struct p80211_frmmeta {scalar_t__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct sk_buff*) ; 
 struct p80211_frmmeta* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

void FUNC4(struct wlandevice *wlandev, struct sk_buff *skb)
{
	struct p80211_frmmeta *meta;

	meta = FUNC2(skb);
	if (meta && meta->rx)
		FUNC3(skb);
	else
		FUNC1(wlandev->netdev,
			   "Freeing an skb (%p) w/ no frmmeta.\n", skb);
	FUNC0(skb);
}