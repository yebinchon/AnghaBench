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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  rx_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
				    struct sk_buff *skb,
				    struct ieee80211_rx_status rx_status)
{
	if (FUNC8(!FUNC6(hw, skb, false))) {
		FUNC2(skb);
	} else {
		struct sk_buff *uskb = NULL;

		uskb = FUNC1(skb->len + 128);
		if (FUNC4(uskb)) {
			FUNC5(FUNC0(uskb), &rx_status,
			       sizeof(rx_status));
			FUNC7(uskb, skb->data, skb->len);
			FUNC2(skb);
			FUNC3(hw, uskb);
		} else {
			FUNC3(hw, skb);
		}
	}
}