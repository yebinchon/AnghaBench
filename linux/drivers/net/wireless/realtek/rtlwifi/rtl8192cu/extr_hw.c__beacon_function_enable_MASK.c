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
 scalar_t__ REG_RD_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);

	FUNC1(hw, (FUNC0(4) | FUNC0(3) | FUNC0(1)), 0x00);
	FUNC3(rtlpriv, REG_RD_CTRL+1, 0x6F);
}