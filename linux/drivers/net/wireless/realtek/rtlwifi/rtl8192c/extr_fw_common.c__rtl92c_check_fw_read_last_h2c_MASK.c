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
typedef  scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_HMETFR ; 
 scalar_t__ REG_MCUTST_1 ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC2 (struct rtl_priv*,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct ieee80211_hw *hw, u8 boxnum)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u8 val_hmetfr, val_mcutst_1;
	bool result = false;

	val_hmetfr = FUNC2(rtlpriv, REG_HMETFR);
	val_mcutst_1 = FUNC2(rtlpriv, (REG_MCUTST_1 + boxnum));

	if (((val_hmetfr >> boxnum) & FUNC0(0)) == 0 && val_mcutst_1 == 0)
		result = true;
	return result;
}