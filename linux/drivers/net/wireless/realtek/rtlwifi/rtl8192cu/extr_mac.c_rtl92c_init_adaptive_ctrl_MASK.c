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
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int RATE_BITMAP_ALL ; 
 int RATE_RRSR_CCK_ONLY_1M ; 
 int /*<<< orphan*/  REG_RL ; 
 int /*<<< orphan*/  REG_RRSR ; 
 int /*<<< orphan*/  REG_SPEC_SIFS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct ieee80211_hw *hw)
{
	u16	value16;
	u32	value32;
	struct rtl_priv *rtlpriv = FUNC4(hw);

	/* Response Rate Set */
	value32 = FUNC5(rtlpriv, REG_RRSR);
	value32 &= ~RATE_BITMAP_ALL;
	value32 |= RATE_RRSR_CCK_ONLY_1M;
	FUNC6(rtlpriv, REG_RRSR, value32);
	/* SIFS (used in NAV) */
	value16 = FUNC1(0x10) | FUNC2(0x10);
	FUNC7(rtlpriv,  REG_SPEC_SIFS, value16);
	/* Retry Limit */
	value16 = FUNC0(0x30) | FUNC3(0x30);
	FUNC6(rtlpriv,  REG_RL, value16);
}