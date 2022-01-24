#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ bt_coexist_type; int bt_ant_isolation; scalar_t__ bt_service; scalar_t__ bt_coexistence; } ;
struct rtl_phy {scalar_t__ rf_type; } ;
struct rtl_priv {TYPE_1__ btcoexist; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ BT_CSR_BC4 ; 
 scalar_t__ BT_CSR_BC8 ; 
 scalar_t__ BT_SCO ; 
 scalar_t__ REG_BT_COEX_TABLE ; 
 int REG_GPIO_MUXCFG ; 
 scalar_t__ RF_1T1R ; 
 int ROFDM0_TRXPATHENABLE ; 
 int ROFDM1_TRXPATHENABLE ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,scalar_t__,int) ; 

void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	u8 u1_tmp;

	if (rtlpriv->btcoexist.bt_coexistence &&
	    ((rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC4) ||
	      rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC8)) {
		if (rtlpriv->btcoexist.bt_ant_isolation)
			FUNC3(rtlpriv, REG_GPIO_MUXCFG, 0xa0);

		u1_tmp = FUNC2(rtlpriv, 0x4fd) &
			 FUNC0(0, 1);
		u1_tmp = u1_tmp |
			 ((rtlpriv->btcoexist.bt_ant_isolation == 1) ?
			 0 : FUNC0(1, 1)) |
			 ((rtlpriv->btcoexist.bt_service == BT_SCO) ?
			 0 : FUNC0(2, 1));
		FUNC3(rtlpriv, 0x4fd, u1_tmp);

		FUNC4(rtlpriv, REG_BT_COEX_TABLE+4, 0xaaaa9aaa);
		FUNC4(rtlpriv, REG_BT_COEX_TABLE+8, 0xffbd0040);
		FUNC4(rtlpriv, REG_BT_COEX_TABLE+0xc, 0x40000010);

		/* Config to 1T1R. */
		if (rtlphy->rf_type == RF_1T1R) {
			u1_tmp = FUNC2(rtlpriv, ROFDM0_TRXPATHENABLE);
			u1_tmp &= ~(FUNC0(1, 1));
			FUNC3(rtlpriv, ROFDM0_TRXPATHENABLE, u1_tmp);

			u1_tmp = FUNC2(rtlpriv, ROFDM1_TRXPATHENABLE);
			u1_tmp &= ~(FUNC0(1, 1));
			FUNC3(rtlpriv, ROFDM1_TRXPATHENABLE, u1_tmp);
		}
	}
}