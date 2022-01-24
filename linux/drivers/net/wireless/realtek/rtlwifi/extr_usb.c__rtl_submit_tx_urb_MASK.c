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
struct rtl_usb {int /*<<< orphan*/  tx_submitted; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct rtl_usb* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw, struct urb *_urb)
{
	int err;
	struct rtl_usb *rtlusb = FUNC2(FUNC3(hw));

	FUNC4(_urb, &rtlusb->tx_submitted);
	err = FUNC6(_urb, GFP_ATOMIC);
	if (err < 0) {
		struct sk_buff *skb;

		FUNC1("Failed to submit urb\n");
		FUNC7(_urb);
		skb = (struct sk_buff *)_urb->context;
		FUNC0(skb);
	}
	FUNC5(_urb);
}