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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_HMETFR ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ieee80211_hw *hw, u8 boxnum)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u8 val_hmetfr;
	bool result = false;

	val_hmetfr = FUNC2(rtlpriv, REG_HMETFR);
	if (((val_hmetfr >> boxnum) & FUNC0(0)) == 0)
		result = true;
	return result;
}