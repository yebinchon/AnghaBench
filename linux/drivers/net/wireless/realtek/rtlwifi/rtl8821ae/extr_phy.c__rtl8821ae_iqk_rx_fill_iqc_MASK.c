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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_IQK ; 
 int /*<<< orphan*/  DBG_LOUD ; 
#define  RF90_PATH_A 128 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
				       enum radio_path path, u32 rx_x, u32 rx_y)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	switch (path) {
	case RF90_PATH_A:
		FUNC4(hw, 0x82c, FUNC0(31), 0x0); /* [31] = 0 --> Page C */
		FUNC4(hw, 0xc10, 0x000003ff, rx_x>>1);
		FUNC4(hw, 0xc10, 0x03ff0000, rx_y>>1);
		FUNC1(rtlpriv, COMP_IQK, DBG_LOUD,
			 "rx_x = %x;;rx_y = %x ====>fill to IQC\n",
			 rx_x>>1, rx_y>>1);
		FUNC1(rtlpriv, COMP_IQK, DBG_LOUD,
			 "0xc10 = %x ====>fill to IQC\n",
			 FUNC3(rtlpriv, 0xc10));
		break;
	default:
		break;
	}
}