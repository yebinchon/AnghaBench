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
struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct TYPE_6__ {int iqk_initialized; } ;
struct rtl_priv {TYPE_3__ phy; TYPE_2__* cfg; } ;
struct rtl_pci {scalar_t__ driver_is_goingto_unload; } ;
struct rtl_mac {int /*<<< orphan*/  link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;} ;

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
 struct rtl_pci* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC7 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 

void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_ps_ctl *ppsc = FUNC7(FUNC6(hw));
	struct rtl_pci *rtlpci = FUNC4(FUNC5(hw));
	struct rtl_mac *mac = FUNC3(FUNC6(hw));
	enum nl80211_iftype opmode;

	mac->link_state = MAC80211_NOLINK;
	opmode = NL80211_IFTYPE_UNSPECIFIED;
	FUNC2(hw, opmode);
	if (rtlpci->driver_is_goingto_unload ||
	    ppsc->rfoff_reason > RF_CHANGE_BY_PS)
		rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);
	FUNC0(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
	FUNC1(hw);

	/* after power off we should do iqk again */
	rtlpriv->phy.iqk_initialized = false;
}