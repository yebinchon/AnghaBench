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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ macphymode; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  REG_APSD_CTRL ; 
 int /*<<< orphan*/  REG_SPS0_CTRL ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  REG_TXPAUSE ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ SINGLEMAC_SINGLEPHY ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u32 u4btmp;
	u8 delay = 5;

	/* a.   TXPAUSE 0x522[7:0] = 0xFF  Pause MAC TX queue  */
	FUNC4(rtlpriv, REG_TXPAUSE, 0xFF);
	/* b.   RF path 0 offset 0x00 = 0x00  disable RF  */
	FUNC3(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);
	/* c.   APSD_CTRL 0x600[7:0] = 0x40 */
	FUNC4(rtlpriv, REG_APSD_CTRL, 0x40);
	/* d. APSD_CTRL 0x600[7:0] = 0x00
	 * APSD_CTRL 0x600[7:0] = 0x00
	 * RF path 0 offset 0x00 = 0x00
	 * APSD_CTRL 0x600[7:0] = 0x40
	 * */
	u4btmp = FUNC1(hw, RF90_PATH_A, 0, RFREG_OFFSET_MASK);
	while (u4btmp != 0 && delay > 0) {
		FUNC4(rtlpriv, REG_APSD_CTRL, 0x0);
		FUNC3(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);
		FUNC4(rtlpriv, REG_APSD_CTRL, 0x40);
		u4btmp = FUNC1(hw, RF90_PATH_A, 0, RFREG_OFFSET_MASK);
		delay--;
	}
	if (delay == 0) {
		/* Jump out the LPS turn off sequence to RF_ON_EXCEP */
		FUNC4(rtlpriv, REG_APSD_CTRL, 0x00);

		FUNC4(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
		FUNC4(rtlpriv, REG_SYS_FUNC_EN, 0xE3);
		FUNC4(rtlpriv, REG_TXPAUSE, 0x00);
		FUNC0(rtlpriv, COMP_POWER, DBG_LOUD,
			 "Fail !!! Switch RF timeout\n");
		return;
	}
	/* e.   For PCIE: SYS_FUNC_EN 0x02[7:0] = 0xE2 reset BB TRX function */
	FUNC4(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
	/* f.   SPS_CTRL 0x11[7:0] = 0x22 */
	if (rtlpriv->rtlhal.macphymode == SINGLEMAC_SINGLEPHY)
		FUNC4(rtlpriv, REG_SPS0_CTRL, 0x22);
	/* g.    SYS_CLKR 0x08[11] = 0  gated MAC clock */
}