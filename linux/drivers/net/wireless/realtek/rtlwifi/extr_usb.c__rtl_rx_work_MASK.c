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
struct rtl_usb {int /*<<< orphan*/  usb_rx_segregate_hdl; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  intf; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned long param)
{
	struct rtl_usb *rtlusb = (struct rtl_usb *)param;
	struct ieee80211_hw *hw = FUNC8(rtlusb->intf);
	struct sk_buff *skb;

	while ((skb = FUNC6(&rtlusb->rx_queue))) {
		if (FUNC7(FUNC0(rtlusb))) {
			FUNC3(skb);
			continue;
		}

		if (FUNC4(!rtlusb->usb_rx_segregate_hdl)) {
			FUNC2(hw, skb);
		} else {
			/* TO DO */
			FUNC1(hw, skb);
			FUNC5("rx agg not supported\n");
		}
	}
}