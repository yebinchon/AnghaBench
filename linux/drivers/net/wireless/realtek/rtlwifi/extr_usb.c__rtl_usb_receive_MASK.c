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
struct urb {int dummy; } ;
struct rtl_usb {int rx_urb_num; int rx_max_size; int /*<<< orphan*/  rx_submitted; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ieee80211_hw*,struct rtl_usb*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct rtl_usb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw)
{
	struct urb *urb;
	int err;
	int i;
	struct rtl_usb *rtlusb = FUNC4(FUNC5(hw));

	FUNC0(0 == rtlusb->rx_urb_num);
	/* 1600 == 1514 + max WLAN header + rtk info */
	FUNC0(rtlusb->rx_max_size < 1600);

	for (i = 0; i < rtlusb->rx_urb_num; i++) {
		err = -ENOMEM;
		urb = FUNC6(0, GFP_KERNEL);
		if (!urb)
			goto err_out;

		err = FUNC1(hw, rtlusb, urb, GFP_KERNEL);
		if (err < 0) {
			FUNC3("Failed to prep_rx_urb!!\n");
			FUNC8(urb);
			goto err_out;
		}

		FUNC7(urb, &rtlusb->rx_submitted);
		err = FUNC10(urb, GFP_KERNEL);
		if (err)
			goto err_out;
		FUNC8(urb);
	}
	return 0;

err_out:
	FUNC9(&rtlusb->rx_submitted);
	FUNC2(hw);
	return err;
}