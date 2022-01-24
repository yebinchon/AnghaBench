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
struct urb {scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int /*<<< orphan*/  intf; } ;
struct ieee80211_tx_info {scalar_t__* rate_driver_data; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_usb*) ; 
 int FUNC2 (struct ieee80211_hw*,struct urb*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	struct sk_buff *skb = (struct sk_buff *)urb->context;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct rtl_usb *rtlusb = (struct rtl_usb *)info->rate_driver_data[0];
	struct ieee80211_hw *hw = FUNC4(rtlusb->intf);
	int err;

	if (FUNC3(FUNC1(rtlusb)))
		return;
	err = FUNC2(hw, urb, skb);
	if (err) {
		/* Ignore error and keep issuiing other urbs */
		return;
	}
}