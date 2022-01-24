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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static void FUNC4(
		struct ieee80211_hw *hw
		)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	/* ========MAC register setting========*/
	FUNC2(hw, 0x82c, FUNC0(31), 0x0); /*[31] = 0 --> Page C*/
	FUNC3(rtlpriv, 0x522, 0x3f);
	FUNC2(hw, 0x550, FUNC0(11) | FUNC0(3), 0x0);
	FUNC3(rtlpriv, 0x808, 0x00);		/*RX ante off*/
	FUNC2(hw, 0x838, 0xf, 0xc);		/*CCA off*/
}