#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef  enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int LED_CTL_LINK ; 
 int LED_CTL_NO_LINK ; 
 scalar_t__ MSR ; 
 int MSR_ADHOC ; 
 int MSR_AP ; 
 int MSR_INFRA ; 
 int MSR_MASK ; 
 int MSR_NOLINK ; 
#define  NL80211_IFTYPE_ADHOC 131 
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_STATION 129 
#define  NL80211_IFTYPE_UNSPECIFIED 128 
 scalar_t__ REG_BCNTCFG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *hw,
				     enum nl80211_iftype type)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	u8 bt_msr = FUNC7(rtlpriv, MSR);
	enum led_ctl_mode ledaction = LED_CTL_NO_LINK;

	bt_msr &= 0xfc;
	if (type == NL80211_IFTYPE_UNSPECIFIED || type ==
	    NL80211_IFTYPE_STATION) {
		FUNC4(hw);
		FUNC2(hw);
	} else if (type == NL80211_IFTYPE_ADHOC || type == NL80211_IFTYPE_AP) {
		FUNC3(hw);
		FUNC1(hw);
	} else {
		FUNC0(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Set HW_VAR_MEDIA_STATUS:No such media status(%x)\n",
			 type);
	}
	switch (type) {
	case NL80211_IFTYPE_UNSPECIFIED:
		bt_msr |= MSR_NOLINK;
		ledaction = LED_CTL_LINK;
		FUNC0(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Set Network type to NO LINK!\n");
		break;
	case NL80211_IFTYPE_ADHOC:
		bt_msr |= MSR_ADHOC;
		FUNC0(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Set Network type to Ad Hoc!\n");
		break;
	case NL80211_IFTYPE_STATION:
		bt_msr |= MSR_INFRA;
		ledaction = LED_CTL_LINK;
		FUNC0(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Set Network type to STA!\n");
		break;
	case NL80211_IFTYPE_AP:
		bt_msr |= MSR_AP;
		FUNC0(rtlpriv, COMP_INIT, DBG_TRACE,
			 "Set Network type to AP!\n");
		break;
	default:
		FUNC5("Network type %d not supported!\n", type);
		goto error_out;
	}
	FUNC8(rtlpriv, MSR, bt_msr);
	rtlpriv->cfg->ops->led_control(hw, ledaction);
	if ((bt_msr & MSR_MASK) == MSR_AP)
		FUNC8(rtlpriv, REG_BCNTCFG + 1, 0x00);
	else
		FUNC8(rtlpriv, REG_BCNTCFG + 1, 0x66);
	return 0;
error_out:
	return 1;
}