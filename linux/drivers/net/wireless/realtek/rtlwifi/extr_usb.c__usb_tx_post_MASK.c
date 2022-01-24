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
struct urb {int status; } ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int /*<<< orphan*/  (* usb_tx_post_hdl ) (struct ieee80211_hw*,struct urb*,struct sk_buff*) ;} ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  RTL_TX_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct rtl_usb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,struct urb*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw, struct urb *urb,
			struct sk_buff *skb)
{
	struct rtl_usb *rtlusb = FUNC4(FUNC5(hw));
	struct ieee80211_tx_info *txinfo;

	rtlusb->usb_tx_post_hdl(hw, urb, skb);
	FUNC6(skb, RTL_TX_HEADER_SIZE);
	txinfo = FUNC0(skb);
	FUNC1(txinfo);
	txinfo->flags |= IEEE80211_TX_STAT_ACK;

	if (urb->status) {
		FUNC3("Urb has error status 0x%X\n", urb->status);
		goto out;
	}
	/*  TODO:	statistics */
out:
	FUNC2(hw, skb);
	return urb->status;
}