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
struct TYPE_2__ {scalar_t__ macphymode; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_APSD_CTRL ; 
 int /*<<< orphan*/  REG_SPS0_CTRL ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  REG_TXPAUSE ; 
 scalar_t__ SINGLEMAC_SINGLEPHY ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);

	/* a.  SYS_CLKR 0x08[11] = 1  restore MAC clock */
	/* b.  SPS_CTRL 0x11[7:0] = 0x2b */
	if (rtlpriv->rtlhal.macphymode == SINGLEMAC_SINGLEPHY)
		FUNC1(rtlpriv, REG_SPS0_CTRL, 0x2b);
	/* c.  For PCIE: SYS_FUNC_EN 0x02[7:0] = 0xE3 enable BB TRX function */
	FUNC1(rtlpriv, REG_SYS_FUNC_EN, 0xE3);
	/* RF_ON_EXCEP(d~g): */
	/* d.  APSD_CTRL 0x600[7:0] = 0x00 */
	FUNC1(rtlpriv, REG_APSD_CTRL, 0x00);
	/* e.  SYS_FUNC_EN 0x02[7:0] = 0xE2  reset BB TRX function again */
	/* f.  SYS_FUNC_EN 0x02[7:0] = 0xE3  enable BB TRX function*/
	FUNC1(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
	FUNC1(rtlpriv, REG_SYS_FUNC_EN, 0xE3);
	/* g.   txpause 0x522[7:0] = 0x00  enable mac tx queue */
	FUNC1(rtlpriv, REG_TXPAUSE, 0x00);
}