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
typedef  int /*<<< orphan*/  u32 ;
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rtl_usb {int /*<<< orphan*/  udev; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_usb*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _rtl_tx_complete ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct rtl_usb* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct urb *FUNC8(struct ieee80211_hw *hw,
				struct sk_buff *skb, u32 ep_num)
{
	struct rtl_usb *rtlusb = FUNC3(FUNC4(hw));
	struct urb *_urb;

	FUNC0(NULL == skb);
	_urb = FUNC5(0, GFP_ATOMIC);
	if (!_urb) {
		FUNC2(skb);
		return NULL;
	}
	FUNC1(rtlusb, skb, ep_num);
	FUNC6(_urb, rtlusb->udev, FUNC7(rtlusb->udev,
			  ep_num), skb->data, skb->len, _rtl_tx_complete, skb);
	_urb->transfer_flags |= URB_ZERO_PACKET;
	return _urb;
}