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
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/ * tx_pending; int /*<<< orphan*/  (* usb_tx_cleanup ) (struct ieee80211_hw*,struct sk_buff*) ;int /*<<< orphan*/ * tx_skb_queue; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 size_t RTL_USB_MAX_EP_NUM ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct rtl_usb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	u32 i;
	struct sk_buff *_skb;
	struct rtl_usb *rtlusb = FUNC4(FUNC5(hw));
	struct ieee80211_tx_info *txinfo;

	/* clean up rx stuff. */
	FUNC1(hw);

	/* clean up tx stuff */
	for (i = 0; i < RTL_USB_MAX_EP_NUM; i++) {
		while ((_skb = FUNC6(&rtlusb->tx_skb_queue[i]))) {
			rtlusb->usb_tx_cleanup(hw, _skb);
			txinfo = FUNC0(_skb);
			FUNC2(txinfo);
			txinfo->flags |= IEEE80211_TX_STAT_ACK;
			FUNC3(hw, _skb);
		}
		FUNC8(&rtlusb->tx_pending[i]);
	}
	FUNC8(&rtlusb->tx_submitted);
}