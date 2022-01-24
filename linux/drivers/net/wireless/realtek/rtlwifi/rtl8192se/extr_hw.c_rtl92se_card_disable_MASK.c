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
typedef  int u8 ;
struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct TYPE_8__ {scalar_t__ pwrdomain_protect; } ;
struct rtl_priv {TYPE_4__ psc; TYPE_3__* cfg; TYPE_1__* intf_ops; } ;
struct rtl_pci {scalar_t__ driver_is_goingto_unload; } ;
struct rtl_mac {int /*<<< orphan*/  link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* enable_aspm ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LED_CTL_POWER_OFF ; 
 int /*<<< orphan*/  MAC80211_NOLINK ; 
 int NL80211_IFTYPE_UNSPECIFIED ; 
 scalar_t__ RF_CHANGE_BY_PS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC4 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC8 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_mac *mac = FUNC4(FUNC7(hw));
	struct rtl_pci *rtlpci = FUNC5(FUNC6(hw));
	struct rtl_ps_ctl *ppsc = FUNC8(FUNC7(hw));
	enum nl80211_iftype opmode;
	u8 wait = 30;

	rtlpriv->intf_ops->enable_aspm(hw);

	if (rtlpci->driver_is_goingto_unload ||
		ppsc->rfoff_reason > RF_CHANGE_BY_PS)
		rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);

	/* we should chnge GPIO to input mode
	 * this will drop away current about 25mA*/
	FUNC3(hw);

	/* this is very important for ips power save */
	while (wait-- >= 10 && rtlpriv->psc.pwrdomain_protect) {
		if (rtlpriv->psc.pwrdomain_protect)
			FUNC2(20);
		else
			break;
	}

	mac->link_state = MAC80211_NOLINK;
	opmode = NL80211_IFTYPE_UNSPECIFIED;
	FUNC1(hw, opmode);

	FUNC0(hw);
	FUNC11(100);
}