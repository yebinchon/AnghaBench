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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rtl_usb {int /*<<< orphan*/  (* usb_mq_to_hwq ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct rtl_tcb_desc {int dummy; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_sta*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_hal*) ; 
 struct rtl_hal* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw,
		      struct ieee80211_sta *sta,
		      struct sk_buff *skb,
		      struct rtl_tcb_desc *dummy)
{
	struct rtl_usb *rtlusb = FUNC6(FUNC7(hw));
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);
	__le16 fc = hdr->frame_control;
	u16 hw_queue;

	if (FUNC10(FUNC3(rtlhal)))
		goto err_free;
	hw_queue = rtlusb->usb_mq_to_hwq(fc, FUNC8(skb));
	FUNC1(hw, sta, skb, hw_queue);
	FUNC0(hw, skb, hw_queue);
	return NETDEV_TX_OK;

err_free:
	FUNC2(skb);
	return NETDEV_TX_OK;
}