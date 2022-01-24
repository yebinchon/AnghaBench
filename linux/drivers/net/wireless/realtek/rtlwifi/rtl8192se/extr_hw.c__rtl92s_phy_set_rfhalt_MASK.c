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
struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ driver_going2unload; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int AFE_PLL_CTRL ; 
 int AFE_XTAL_CTRL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CMDR ; 
 int LDOA15_CTRL ; 
 int LDOV12D_CTRL ; 
 int PHY_CCA ; 
 int REG_SYS_FUNC_EN ; 
 scalar_t__ RF_CHANGE_BY_IPS ; 
 int /*<<< orphan*/  RT_RF_OFF_LEVL_HALT_NIC ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_ps_ctl*,int /*<<< orphan*/ ) ; 
 int SPS1_CTRL ; 
 int SYS_CLKR ; 
 int TXPAUSE ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC6 (struct rtl_priv*) ; 
 int FUNC7 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	struct rtl_ps_ctl *ppsc = FUNC6(FUNC5(hw));
	u8 u1btmp;

	if (rtlhal->driver_going2unload)
		FUNC8(rtlpriv, 0x560, 0x0);

	/* Power save for BB/RF */
	u1btmp = FUNC7(rtlpriv, LDOV12D_CTRL);
	u1btmp |= FUNC0(0);
	FUNC8(rtlpriv, LDOV12D_CTRL, u1btmp);
	FUNC8(rtlpriv, SPS1_CTRL, 0x0);
	FUNC8(rtlpriv, TXPAUSE, 0xFF);
	FUNC9(rtlpriv, CMDR, 0x57FC);
	FUNC10(100);
	FUNC9(rtlpriv, CMDR, 0x77FC);
	FUNC8(rtlpriv, PHY_CCA, 0x0);
	FUNC10(10);
	FUNC9(rtlpriv, CMDR, 0x37FC);
	FUNC10(10);
	FUNC9(rtlpriv, CMDR, 0x77FC);
	FUNC10(10);
	FUNC9(rtlpriv, CMDR, 0x57FC);
	FUNC9(rtlpriv, CMDR, 0x0000);

	if (rtlhal->driver_going2unload) {
		u1btmp = FUNC7(rtlpriv, (REG_SYS_FUNC_EN + 1));
		u1btmp &= ~(FUNC0(0));
		FUNC8(rtlpriv, REG_SYS_FUNC_EN + 1, u1btmp);
	}

	u1btmp = FUNC7(rtlpriv, (SYS_CLKR + 1));

	/* Add description. After switch control path. register
	 * after page1 will be invisible. We can not do any IO
	 * for register>0x40. After resume&MACIO reset, we need
	 * to remember previous reg content. */
	if (u1btmp & FUNC0(7)) {
		u1btmp &= ~(FUNC0(6) | FUNC0(7));
		if (!FUNC2(hw, u1btmp)) {
			FUNC3("Switch ctrl path fail\n");
			return;
		}
	}

	/* Power save for MAC */
	if (ppsc->rfoff_reason == RF_CHANGE_BY_IPS  &&
		!rtlhal->driver_going2unload) {
		/* enable LED function */
		FUNC8(rtlpriv, 0x03, 0xF9);
	/* SW/HW radio off or halt adapter!! For example S3/S4 */
	} else {
		/* LED function disable. Power range is about 8mA now. */
		/* if write 0xF1 disconnet_pci power
		 *	 ifconfig wlan0 down power are both high 35:70 */
		/* if write oxF9 disconnet_pci power
		 * ifconfig wlan0 down power are both low  12:45*/
		FUNC8(rtlpriv, 0x03, 0xF9);
	}

	FUNC8(rtlpriv, SYS_CLKR + 1, 0x70);
	FUNC8(rtlpriv, AFE_PLL_CTRL + 1, 0x68);
	FUNC8(rtlpriv,  AFE_PLL_CTRL, 0x00);
	FUNC8(rtlpriv, LDOA15_CTRL, 0x34);
	FUNC8(rtlpriv, AFE_XTAL_CTRL, 0x0E);
	FUNC1(ppsc, RT_RF_OFF_LEVL_HALT_NIC);

}