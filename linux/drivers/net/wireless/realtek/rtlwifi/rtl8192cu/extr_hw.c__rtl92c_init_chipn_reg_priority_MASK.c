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
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_TRXDMA_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw, u16 beq,
					    u16 bkq, u16 viq, u16 voq,
					    u16 mgtq, u16 hiq)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	u16 value16 = (FUNC7(rtlpriv, REG_TRXDMA_CTRL) & 0x7);

	value16 |= FUNC0(beq) | FUNC1(bkq) |
		   FUNC4(viq) | FUNC5(voq) |
		   FUNC3(mgtq) | FUNC2(hiq);
	FUNC8(rtlpriv,  REG_TRXDMA_CTRL, value16);
}