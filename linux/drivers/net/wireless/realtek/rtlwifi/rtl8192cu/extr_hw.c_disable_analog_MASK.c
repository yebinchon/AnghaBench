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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int AFSM_HSUS ; 
 int APDM_HOST ; 
 int LDV12_EN ; 
 int PFM_ALDN ; 
 int /*<<< orphan*/  REG_APS_FSMCO ; 
 int /*<<< orphan*/  REG_LDOA15_CTRL ; 
 int /*<<< orphan*/  REG_LDOV12D_CTRL ; 
 int /*<<< orphan*/  REG_RSV_CTRL ; 
 int /*<<< orphan*/  REG_SPS0_CTRL ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw, bool withouthwsm)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u16 value16 = 0;
	u8 value8 = 0;

	if (withouthwsm) {
		/*****************************
		n. LDOA15_CTRL 0x20[7:0] = 0x04	 disable A15 power
		o. LDOV12D_CTRL 0x21[7:0] = 0x54 disable digital core power
		r. When driver call disable, the ASIC will turn off remaining
		   clock automatically
		******************************/
		FUNC2(rtlpriv, REG_LDOA15_CTRL, 0x04);
		value8 = FUNC1(rtlpriv, REG_LDOV12D_CTRL);
		value8 &= (~LDV12_EN);
		FUNC2(rtlpriv, REG_LDOV12D_CTRL, value8);
	}

/*****************************
h. SPS0_CTRL 0x11[7:0] = 0x23		enter PFM mode
i. APS_FSMCO 0x04[15:0] = 0x4802	set USB suspend
******************************/
	FUNC2(rtlpriv, REG_SPS0_CTRL, 0x23);
	value16 |= (APDM_HOST | AFSM_HSUS | PFM_ALDN);
	FUNC3(rtlpriv, REG_APS_FSMCO, (u16)value16);
	FUNC2(rtlpriv, REG_RSV_CTRL, 0x0E);
}