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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ bt_coexist_type; scalar_t__ bt_coexistence; } ;
struct rtl_priv {TYPE_2__ btcoexist; TYPE_1__* intf_ops; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_aspm ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ BT_CSR_BC4 ; 
 scalar_t__ BT_CSR_BC8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_AFE_PLL_CTRL ; 
 scalar_t__ REG_AFE_XTAL_CTRL ; 
 scalar_t__ REG_APSD_CTRL ; 
 scalar_t__ REG_APS_FSMCO ; 
 int /*<<< orphan*/  REG_GPIO_IO_SEL ; 
 scalar_t__ REG_GPIO_PIN_CTRL ; 
 int /*<<< orphan*/  REG_LEDCFG0 ; 
 scalar_t__ REG_MCUFWDL ; 
 scalar_t__ REG_RF_CTRL ; 
 scalar_t__ REG_RSV_CTRL ; 
 scalar_t__ REG_SPS0_CTRL ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 scalar_t__ REG_TXPAUSE ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct rtl_priv*,scalar_t__) ; 
 int FUNC6 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC3(rtlpriv);
	u8 u1b_tmp;
	u32 u4b_tmp;

	rtlpriv->intf_ops->enable_aspm(hw);
	FUNC8(rtlpriv, REG_TXPAUSE, 0xFF);
	FUNC7(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);
	FUNC8(rtlpriv, REG_RF_CTRL, 0x00);
	FUNC8(rtlpriv, REG_APSD_CTRL, 0x40);
	FUNC8(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
	FUNC8(rtlpriv, REG_SYS_FUNC_EN, 0xE0);
	if (FUNC5(rtlpriv, REG_MCUFWDL) & FUNC0(7))
		FUNC2(hw);
	FUNC8(rtlpriv, REG_SYS_FUNC_EN + 1, 0x51);
	FUNC8(rtlpriv, REG_MCUFWDL, 0x00);
	FUNC9(rtlpriv, REG_GPIO_PIN_CTRL, 0x00000000);
	u1b_tmp = FUNC5(rtlpriv, REG_GPIO_PIN_CTRL);
	if ((rtlpriv->btcoexist.bt_coexistence) &&
	    ((rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC4) ||
	     (rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC8))) {
		FUNC9(rtlpriv, REG_GPIO_PIN_CTRL, 0x00F30000 |
				(u1b_tmp << 8));
	} else {
		FUNC9(rtlpriv, REG_GPIO_PIN_CTRL, 0x00FF0000 |
				(u1b_tmp << 8));
	}
	FUNC10(rtlpriv, REG_GPIO_IO_SEL, 0x0790);
	FUNC10(rtlpriv, REG_LEDCFG0, 0x8080);
	FUNC8(rtlpriv, REG_AFE_PLL_CTRL, 0x80);
	if (!FUNC1(rtlhal->version))
		FUNC8(rtlpriv, REG_SPS0_CTRL, 0x23);
	if (rtlpriv->btcoexist.bt_coexistence) {
		u4b_tmp = FUNC6(rtlpriv, REG_AFE_XTAL_CTRL);
		u4b_tmp |= 0x03824800;
		FUNC9(rtlpriv, REG_AFE_XTAL_CTRL, u4b_tmp);
	} else {
		FUNC9(rtlpriv, REG_AFE_XTAL_CTRL, 0x0e);
	}

	FUNC8(rtlpriv, REG_RSV_CTRL, 0x0e);
	FUNC8(rtlpriv, REG_APS_FSMCO + 1, 0x10);
}