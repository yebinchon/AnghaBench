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
struct rtl_priv {int dummy; } ;
struct rtl_hal {int /*<<< orphan*/  oem_id; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
#define  RF90_PATH_A 131 
#define  RF90_PATH_B 130 
#define  RF90_PATH_C 129 
#define  RF90_PATH_D 128 
 int /*<<< orphan*/  RTL8723BE_RADIOA_1TARRAY ; 
 int /*<<< orphan*/  RTL8723BE_RADIOA_1TARRAYLEN ; 
 int /*<<< orphan*/  RT_CID_819X_HP ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 
 int FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct ieee80211_hw*,int,int)) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

bool FUNC5(struct ieee80211_hw *hw,
					     enum radio_path rfpath)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));
	bool ret = true;

	FUNC0(rtlpriv, COMP_INIT, DBG_LOUD, "Radio No %x\n", rfpath);
	switch (rfpath) {
	case RF90_PATH_A:
		ret =  FUNC2(hw,
				RTL8723BE_RADIOA_1TARRAY,
				RTL8723BE_RADIOA_1TARRAYLEN,
				_rtl8723be_config_rf_radio_a);

		if (rtlhal->oem_id == RT_CID_819X_HP)
			FUNC1(hw, 0x52, 0x7E4BD);
		break;
	case RF90_PATH_B:
	case RF90_PATH_C:
		break;
	case RF90_PATH_D:
		FUNC0(rtlpriv, COMP_ERR, DBG_LOUD,
			 "switch case %#x not processed\n", rfpath);
		break;
	}
	return ret;
}