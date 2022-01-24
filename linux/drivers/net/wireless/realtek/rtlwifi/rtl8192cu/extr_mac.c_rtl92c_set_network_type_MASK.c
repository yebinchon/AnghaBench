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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MSR ; 
#define  NL80211_IFTYPE_ADHOC 131 
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_STATION 129 
#define  NL80211_IFTYPE_UNSPECIFIED 128 
 int /*<<< orphan*/  NT_AS_AP ; 
 int /*<<< orphan*/  NT_LINK_AD_HOC ; 
 int /*<<< orphan*/  NT_LINK_AP ; 
 int /*<<< orphan*/  NT_NO_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct ieee80211_hw *hw, enum nl80211_iftype type)
{
	u8 value;
	struct rtl_priv *rtlpriv = FUNC1(hw);

	switch (type) {
	case NL80211_IFTYPE_UNSPECIFIED:
		value = NT_NO_LINK;
		FUNC0(rtlpriv, COMP_INIT, DBG_DMESG,
			 "Set Network type to NO LINK!\n");
		break;
	case NL80211_IFTYPE_ADHOC:
		value = NT_LINK_AD_HOC;
		FUNC0(rtlpriv, COMP_INIT, DBG_DMESG,
			 "Set Network type to Ad Hoc!\n");
		break;
	case NL80211_IFTYPE_STATION:
		value = NT_LINK_AP;
		FUNC0(rtlpriv, COMP_INIT, DBG_DMESG,
			 "Set Network type to STA!\n");
		break;
	case NL80211_IFTYPE_AP:
		value = NT_AS_AP;
		FUNC0(rtlpriv, COMP_INIT, DBG_DMESG,
			 "Set Network type to AP!\n");
		break;
	default:
		FUNC0(rtlpriv, COMP_INIT, DBG_DMESG,
			 "Network type %d not supported!\n", type);
		return -EOPNOTSUPP;
	}
	FUNC2(rtlpriv, MSR, value);
	return 0;
}