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
struct rtl_usb {scalar_t__ disablehwsm; } ;
struct rtl_ps_ctl {int dummy; } ;
struct TYPE_6__ {int iqk_initialized; } ;
struct rtl_priv {TYPE_3__ phy; TYPE_2__* cfg; } ;
struct rtl_mac {int /*<<< orphan*/  link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LED_CTL_POWER_OFF ; 
 int /*<<< orphan*/  MAC80211_NOLINK ; 
 int NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  RT_RF_OFF_LEVL_HALT_NIC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_ps_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC6 (struct rtl_priv*) ; 
 struct rtl_usb* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 

void FUNC10(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_ps_ctl *ppsc = FUNC6(FUNC5(hw));
	struct rtl_usb *rtlusb = FUNC7(FUNC8(hw));
	struct rtl_mac *mac = FUNC4(FUNC5(hw));
	enum nl80211_iftype opmode;

	mac->link_state = MAC80211_NOLINK;
	opmode = NL80211_IFTYPE_UNSPECIFIED;
	FUNC1(hw, opmode);
	rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);
	FUNC0(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
	if (rtlusb->disablehwsm)
		FUNC2(hw);
	else
		FUNC3(hw);

	/* after power off we should do iqk again */
	rtlpriv->phy.iqk_initialized = false;
}