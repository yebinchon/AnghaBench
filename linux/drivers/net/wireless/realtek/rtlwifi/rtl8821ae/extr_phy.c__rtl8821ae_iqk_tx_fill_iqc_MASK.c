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
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct ieee80211_hw*,int,int) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
				       enum radio_path path, u32 tx_x, u32 tx_y)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	switch (path) {
	case RF90_PATH_A:
		/* [31] = 1 --> Page C1 */
		FUNC4(hw, 0x82c, FUNC0(31), 0x1);
		FUNC5(rtlpriv, 0xc90, 0x00000080);
		FUNC5(rtlpriv, 0xcc4, 0x20040000);
		FUNC5(rtlpriv, 0xcc8, 0x20000000);
		FUNC4(hw, 0xccc, 0x000007ff, tx_y);
		FUNC4(hw, 0xcd4, 0x000007ff, tx_x);
		FUNC1(rtlpriv, COMP_IQK, DBG_LOUD,
			 "TX_X = %x;;TX_Y = %x =====> fill to IQC\n",
			 tx_x, tx_y);
		FUNC1(rtlpriv, COMP_IQK, DBG_LOUD,
			 "0xcd4 = %x;;0xccc = %x ====>fill to IQC\n",
			 FUNC2(hw, 0xcd4, 0x000007ff),
			 FUNC2(hw, 0xccc, 0x000007ff));
		break;
	default:
		break;
	}
}