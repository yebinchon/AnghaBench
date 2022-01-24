#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct rtl_usb {int /*<<< orphan*/  udev; } ;
struct rtl_priv {TYPE_3__* cfg; int /*<<< orphan*/  usb_data; TYPE_1__* intf_ops; int /*<<< orphan*/  status; int /*<<< orphan*/  firmware_loading_complete; } ;
struct rtl_mac {int mac80211_registered; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* deinit_sw_vars ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* deinit_sw_leds ) (struct ieee80211_hw*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* adapter_stop ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RTL_STATUS_INTERFACE_START ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int) ; 
 struct rtl_mac* FUNC7 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC15 (int) ; 
 struct ieee80211_hw* FUNC16 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

void FUNC20(struct usb_interface *intf)
{
	struct ieee80211_hw *hw = FUNC16(intf);
	struct rtl_priv *rtlpriv = FUNC8(hw);
	struct rtl_mac *rtlmac = FUNC7(FUNC8(hw));
	struct rtl_usb *rtlusb = FUNC10(FUNC11(hw));

	if (FUNC15(!rtlpriv))
		return;
	/* just in case driver is removed before firmware callback */
	FUNC19(&rtlpriv->firmware_loading_complete);
	FUNC1(RTL_STATUS_INTERFACE_START, &rtlpriv->status);
	/*ieee80211_unregister_hw will call ops_stop */
	if (rtlmac->mac80211_registered == 1) {
		FUNC3(hw);
		rtlmac->mac80211_registered = 0;
	} else {
		FUNC6(hw, false);
		rtlpriv->intf_ops->adapter_stop(hw);
	}
	/*deinit rfkill */
	/* rtl_deinit_rfkill(hw); */
	FUNC9(hw);
	FUNC5(hw);
	FUNC4(rtlpriv->usb_data);
	rtlpriv->cfg->ops->deinit_sw_leds(hw);
	rtlpriv->cfg->ops->deinit_sw_vars(hw);
	FUNC0(hw);
	FUNC17(rtlusb->udev);
	FUNC18(intf, NULL);
	FUNC2(hw);
}