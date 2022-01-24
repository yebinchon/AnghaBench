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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int /*<<< orphan*/  (* usb_rx_segregate_hdl ) (struct ieee80211_hw*,struct sk_buff*,struct sk_buff_head*) ;} ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct rtl_usb* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct sk_buff* FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,struct sk_buff*,struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	struct sk_buff *_skb;
	struct sk_buff_head rx_queue;
	struct rtl_usb *rtlusb = FUNC3(FUNC4(hw));

	FUNC7(&rx_queue);
	if (rtlusb->usb_rx_segregate_hdl)
		rtlusb->usb_rx_segregate_hdl(hw, skb, &rx_queue);
	FUNC0(FUNC6(&rx_queue));
	while (!FUNC6(&rx_queue)) {
		_skb = FUNC5(&rx_queue);
		FUNC1(hw, _skb);
		FUNC2(hw, _skb);
	}
}