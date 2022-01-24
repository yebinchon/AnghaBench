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
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct sk_buff *skb_new;

	if (vif->type != NL80211_IFTYPE_AP &&
	    vif->type != NL80211_IFTYPE_ADHOC &&
	    !FUNC2(vif)) {
		skb_new = FUNC0(1, GFP_KERNEL);
		if (!skb_new)
			return NULL;
		FUNC3(skb_new, 1);
	} else {
		skb_new = FUNC1(hw, vif);
	}

	return skb_new;
}