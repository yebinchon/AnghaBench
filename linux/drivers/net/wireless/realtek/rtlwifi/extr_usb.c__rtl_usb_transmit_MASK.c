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
typedef  int /*<<< orphan*/  u32 ;
struct urb {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ep_mapping; } ;
struct rtl_usb {TYPE_1__ ep_map; int /*<<< orphan*/ * usb_tx_aggregate_hdl; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rtl_txq { ____Placeholder_rtl_txq } rtl_txq ;

/* Variables and functions */
 int FUNC0 (struct rtl_usb*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct urb*) ; 
 struct urb* FUNC3 (struct ieee80211_hw*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct rtl_usb* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw, struct sk_buff *skb,
		       enum rtl_txq qnum)
{
	struct rtl_usb *rtlusb = FUNC6(FUNC7(hw));
	u32 ep_num;
	struct urb *_urb = NULL;
	struct sk_buff *_skb = NULL;

	FUNC1(NULL == rtlusb->usb_tx_aggregate_hdl);
	if (FUNC8(FUNC0(rtlusb))) {
		FUNC5("USB device is stopping...\n");
		FUNC4(skb);
		return;
	}
	ep_num = rtlusb->ep_map.ep_mapping[qnum];
	_skb = skb;
	_urb = FUNC3(hw, _skb, ep_num);
	if (FUNC8(!_urb)) {
		FUNC5("Can't allocate urb. Drop skb!\n");
		FUNC4(skb);
		return;
	}
	FUNC2(hw, _urb);
}