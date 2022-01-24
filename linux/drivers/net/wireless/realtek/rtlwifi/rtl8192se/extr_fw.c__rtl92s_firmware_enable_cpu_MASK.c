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
typedef  int u32 ;
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int FEN_CPUEN ; 
 int IMEM_RDY ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_CLKR ; 
 int SYS_CPU_CLKSEL ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u32 ichecktime = 200;
	u16 tmpu2b;
	u8 tmpu1b, cpustatus = 0;

	FUNC1(hw);

	/* Enable CPU. */
	tmpu1b = FUNC3(rtlpriv, SYS_CLKR);
	/* AFE source */
	FUNC5(rtlpriv, SYS_CLKR, (tmpu1b | SYS_CPU_CLKSEL));

	tmpu2b = FUNC4(rtlpriv, REG_SYS_FUNC_EN);
	FUNC6(rtlpriv, REG_SYS_FUNC_EN, (tmpu2b | FEN_CPUEN));

	/* Polling IMEM Ready after CPU has refilled. */
	do {
		cpustatus = FUNC3(rtlpriv, TCR);
		if (cpustatus & IMEM_RDY) {
			FUNC0(rtlpriv, COMP_INIT, DBG_LOUD,
				 "IMEM Ready after CPU has refilled\n");
			break;
		}

		FUNC7(100);
	} while (ichecktime--);

	if (!(cpustatus & IMEM_RDY))
		return false;

	return true;
}