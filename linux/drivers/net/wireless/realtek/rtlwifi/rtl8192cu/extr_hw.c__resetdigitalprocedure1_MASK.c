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
typedef  int u8 ;
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int fw_version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FEN_CPUEN ; 
 int FEN_ELDR ; 
 int FEN_HWPDN ; 
 scalar_t__ REG_AFE_PLL_CTRL ; 
 scalar_t__ REG_AFE_XTAL_CTRL ; 
 scalar_t__ REG_HMETFR ; 
 scalar_t__ REG_MCUFWDL ; 
 scalar_t__ REG_SYS_CLKR ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 scalar_t__ REG_SYS_ISO_CTRL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct rtl_priv*,scalar_t__) ; 
 int FUNC5 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void  FUNC9(struct ieee80211_hw *hw, bool withouthwsm)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));

	if (rtlhal->fw_version <=  0x20) {
		/*****************************
		f. MCUFWDL 0x80[7:0]=0		reset MCU ready status
		g. SYS_FUNC_EN 0x02[10]= 0	reset MCU reg, (8051 reset)
		h. SYS_FUNC_EN 0x02[15-12]= 5	reset MAC reg, DCORE
		i. SYS_FUNC_EN 0x02[10]= 1	enable MCU reg, (8051 enable)
		******************************/
		u16 valu16 = 0;

		FUNC6(rtlpriv, REG_MCUFWDL, 0);
		valu16 = FUNC5(rtlpriv, REG_SYS_FUNC_EN);
		FUNC7(rtlpriv, REG_SYS_FUNC_EN, (valu16 &
			       (~FEN_CPUEN))); /* reset MCU ,8051 */
		valu16 = FUNC5(rtlpriv, REG_SYS_FUNC_EN)&0x0FFF;
		FUNC7(rtlpriv, REG_SYS_FUNC_EN, (valu16 |
			      (FEN_HWPDN|FEN_ELDR))); /* reset MAC */
		valu16 = FUNC5(rtlpriv, REG_SYS_FUNC_EN);
		FUNC7(rtlpriv, REG_SYS_FUNC_EN, (valu16 |
			       FEN_CPUEN)); /* enable MCU ,8051 */
	} else {
		u8 retry_cnts = 0;

		/* IF fw in RAM code, do reset */
		if (FUNC4(rtlpriv, REG_MCUFWDL) & FUNC0(1)) {
			/* reset MCU ready status */
			FUNC6(rtlpriv, REG_MCUFWDL, 0);
			/* 8051 reset by self */
			FUNC6(rtlpriv, REG_HMETFR+3, 0x20);
			while ((retry_cnts++ < 100) &&
			       (FEN_CPUEN & FUNC5(rtlpriv,
			       REG_SYS_FUNC_EN))) {
				FUNC8(50);
			}
			if (retry_cnts >= 100) {
				FUNC1("8051 reset failed!.........................\n");
				/* if 8051 reset fail, reset MAC. */
				FUNC6(rtlpriv,
					       REG_SYS_FUNC_EN + 1,
					       0x50);
				FUNC8(100);
			}
		}
		/* Reset MAC and Enable 8051 */
		FUNC6(rtlpriv, REG_SYS_FUNC_EN + 1, 0x54);
		FUNC6(rtlpriv, REG_MCUFWDL, 0);
	}
	if (withouthwsm) {
		/*****************************
		  Without HW auto state machine
		g.SYS_CLKR 0x08[15:0] = 0x30A3		disable MAC clock
		h.AFE_PLL_CTRL 0x28[7:0] = 0x80		disable AFE PLL
		i.AFE_XTAL_CTRL 0x24[15:0] = 0x880F	gated AFE DIG_CLOCK
		j.SYS_ISu_CTRL 0x00[7:0] = 0xF9		isolated digital to PON
		******************************/
		FUNC7(rtlpriv, REG_SYS_CLKR, 0x70A3);
		FUNC6(rtlpriv, REG_AFE_PLL_CTRL, 0x80);
		FUNC7(rtlpriv, REG_AFE_XTAL_CTRL, 0x880F);
		FUNC6(rtlpriv, REG_SYS_ISO_CTRL, 0xF9);
	}
}