#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct TYPE_8__ {int iqk_initialized; } ;
struct TYPE_5__ {scalar_t__ driver_is_goingto_unload; } ;
struct rtl_priv {TYPE_4__ phy; TYPE_3__* cfg; TYPE_1__ rtlhal; } ;
struct rtl_mac {int /*<<< orphan*/  link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_btc_status ) () ;int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LED_CTL_POWER_OFF ; 
 int /*<<< orphan*/  MAC80211_NOLINK ; 
 int NL80211_IFTYPE_UNSPECIFIED ; 
 scalar_t__ RF_CHANGE_BY_PS ; 
 int /*<<< orphan*/  RT_RF_OFF_LEVL_HALT_NIC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_ps_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 struct rtl_mac* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC5 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_ps_ctl *ppsc = FUNC5(FUNC4(hw));
	struct rtl_mac *mac = FUNC3(FUNC4(hw));
	enum nl80211_iftype opmode;

	mac->link_state = MAC80211_NOLINK;
	opmode = NL80211_IFTYPE_UNSPECIFIED;
	FUNC2(hw, opmode);
	if (rtlpriv->rtlhal.driver_is_goingto_unload ||
	    ppsc->rfoff_reason > RF_CHANGE_BY_PS)
		rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);
	FUNC0(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
	FUNC1(hw);

	/* after power off we should do iqk again */
	if (!rtlpriv->cfg->ops->get_btc_status())
		rtlpriv->phy.iqk_initialized = false;
}